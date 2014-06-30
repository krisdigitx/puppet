define sudo::directive (
  $ensure=present,
  $groupname,
  $content="",
) {

  # sudo skipping file names that contain a "."
#  $dname = regsubst($gname, '\.', '-', 'G')

    file {"/etc/sudoers.d/${groupname}":
      ensure  => $ensure,
      owner   => root,
      group   => root,
      mode    => 0440,
      content => $content ? {
        ""      => undef,   
        default => $content,
      },
#      source  => $source ? {
#        ""      => undef,  
#        default => $source,
#      },
      require => Package["sudo"],
    }
}

