file {'teste':
 path    => '/tmp/teste.txt',
 ensure  => present,
 mode    => '0640',
 content => "arquivo de teste\n", 
 }
