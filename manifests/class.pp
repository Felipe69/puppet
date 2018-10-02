class new_dir {
  file {'/tmp/teste':
  ensure  => present,
       }
}
include new_dir
