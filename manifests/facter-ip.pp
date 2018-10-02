$ip = $ipaddress
$curitem = split($ip, ',')

  notify { "$curitem" :}
