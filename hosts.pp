host {'puppetnew':
        name             => 'puppetnew',
        ensure           => present,
        host_aliases     => 'puppetnew.devops.com',
        ip               => '192.168.56.10',
}
