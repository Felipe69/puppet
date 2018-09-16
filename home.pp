class diretorio {
$directory  = '/home/katello-su'
$group      = '32184'
$owner      =  '10001'
$permissao  = '0755'
$tipo       = 'directory'
}

file {$directory:
ensure    => $tipo,
group     => $group,
owner     => $owner,
mode      => $permissao,

}
