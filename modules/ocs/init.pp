#Module para a instalação do agente do OCS Inventory
class ocs (
   String $dir = 'c:/temp/',
   String $agent = 'OCS-NG-Windows-Agent-Setup.exe',
   String $agent_path = "${dir}${agent}",
  ){

  file { $agent_path:
    ensure => 'present',
    source => 'puppet:///modules/ocs/OCS-NG-Windows-Agent-Setup.exe',
  }

  -> package { 'OCS Inventory Agent':
    ensure => installed,
    name   => 'OCS Agent',
    source => $agent_path,
    install_options => ['/S', '/NOW', '/SERVER=http://192.168.10.16:8082/ocsinventory', '/INSTALL', '/FORCE', '/NP'],
  }

  -> exec { 'Instala_agent_OCSInventory':
    command   => 'c:/temp/OCS-NG-Windows-Agent-Setup.exe /S /NOW /SERVER=http://192.168.10.16:8082/ocsinventory /INSTALL /DEBUG /FORCE /NP',
    provider  => powershell,
    logoutput => true,
  }

/**
  file {'c:/temp/test.ps1':
    ensure => 'present',
    content => "C:\Felipe\Linux\OCS\OCSNG-Windows-Agent-2.3.1.1\OCS-NG-Windows-Agent-Setup.exe /S /NOW /SERVER=http://192.168.3.75/ocsinventory /INSTALL /DEBUG /FORCE /NP"
  }

  exec { 'Instala_agent_OCSInventory':
    command   => '& C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -file c:/temp/test.ps1; Exit 0',
    onlyif    => 'c:/temp/test.ps1',
    provider  => powershell,
    logoutput => true,
  }
  **/
