host {'tux':
        name             => 'tux',
        ensure           => absent,
        host_aliases     => 'tux.devops.com',
        ip               => '192.168.1.13',
}

host {'devops':
	name	=> 'devops',
	ip	=> '192.168.122.102',
	ensure	=> 'present',
}
