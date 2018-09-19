##Services
service {'sshd':
ensure => 'running',
enable => 'true',
}
package {'screen':
ensure => 'installed',
}

#package { 'apache2':
#ensure => 'installed',
#}
package {'bind9':
ensure => 'installed',
}

package {['wget','git','ntp']:
ensure => 'installed',
}

#service {'apache2':
#ensure => 'running',
#enable => 'true',
#}


service {'ntp':
ensure => 'running',
enable => 'true',
}
#package {'bind9': ensure => installed,}
service {'bind9':
ensure => 'running',
require => Package['bind9'],
#subscribe => file['bind9'],
}


#file {"/etc/bid/named.conf.default.zones":
#source => "named.conf.default.zones",
#notify => service['bind9'],
#}
#
file {'teste':
path => '/etc/teste.txt',
owner => 'felipe',
content => 'amanhã é segunda',
}


###User
user {'ti':
name => 'ti',
comment => 'user deploy puppet',
ensure => 'present',
}

###
file {'teste2':
path => '/tmp/teste2',
ensure => present,
owner => 'felipe',
mode => '755'
}
