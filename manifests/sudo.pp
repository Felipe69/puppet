package {'sudo':
        ensure  => 'installed',

}

file {'/etc/sudoers':
        ensure => present,
        source => '/root/puppet/sudoers',
        mode   => '0440',
        owner  => 'root',
        group  => 'root',
        require => [Package['sudo'], Exec['parse_sudores']],
}
exec {'parse_sudores':
        command => '/usr/sbin/visudo -c -f /root/puppet/sudoers',
        unless  => '/usr/bin/diff /root/puppet/sudoers /etc/sudoers',
        require => Package['sudo'],
}
