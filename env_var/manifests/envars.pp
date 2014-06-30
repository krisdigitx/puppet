define env_var::envars(
   $http_proxy,
   $ftp_proxy,
   $https_proxy,
   $term
) {

  file { "/etc/profile.d/environment.sh":
        ensure => present,
        content => template('env_var/environment.erb'),
    }

}


