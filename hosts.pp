host {'tux':
        name             => 'tux',
        ensure           => present,
        host_aliases     => 'tux.devops.com',
        ip               => '192.168.1.13',
}
