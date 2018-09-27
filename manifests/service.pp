case $::operatingsystem {
	fedora: { $openssh = "openssh-server"}
	centos: { $openssh = "openssh-server" }
	ubuntu: { $openssh = "ssh"}
}

package {'openssh':
	name => $openssh,
	ensure => latest,
}

if $::osfamily == 'RedHat' {
	service {'sshd':
	ensure => 'running',
	enable => true,
	require => Package['openssh'],
	}
}
elsif $::osfamily == 'Debian' {
	service {'openssh':
	ensure => 'running',
	enable => true,
	require => Package['ssh'],
	}
}
