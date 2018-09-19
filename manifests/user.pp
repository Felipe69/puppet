user {'elvis':
  ensure => present,
  shell => '/bin/sh',
  managehome => 'true',
}
