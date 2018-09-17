if $::osfamily == 'RedHat' {
  notify  {"o sistema operacional  ${::osfamily}":}
  notify {"Running with \$mysql_server_id ${::mysql_server_id} ID defined":}
