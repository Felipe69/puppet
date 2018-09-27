package {'sshdd'
if $::osfamily == 'RedHat  {
	service {'sshd':
	ensure => 'running',
	enable => true,
	}
}
else $::osfamily == 'Debian' {
	service {'ssh':
	ensure => 'running',
	enable => true,
	}
}


