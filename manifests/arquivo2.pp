file {'/tmp/teste1':
 ensure	 => present,
 content => "Ola!\n",
 before  => Notify['mensagem']
}

file {'/tmp/teste2':
 ensure => directory,
 mode	=> '0644'
}
file {'/tmp/teste3':
 ensure	=> link,
 target =>  '/tmp/teste1',
}

notify {"Gerando uma notificação!":
require => File['/tmp/teste1'],
}
notify {'mensagem':
 message => "Gerando outra notificação",
}



