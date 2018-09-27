if $::is_virtual == true {
	notify {"Estamos em uma vm e o virtualizador é  ${::manufacturer} com o sistema operacional ${::operatingsystem}": }
}
else {
	notify {"Estamos em uma maquina fisica": }
}
