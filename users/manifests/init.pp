class users (
  $users = 'undef'
) {
#  include sudo

  file { "/root/.vimrc":
    ensure => present,
    owner => 'root',
    group => 'root',
    source => "puppet:///modules/users/vimrc",
  }

#   file { "/usr/share/vim/vim72/colors/jellybeans.vim":
#    source => "puppet:///modules/users/jellybeans.vim",
#    ensure => present,
#  }


  if $users == 'undef' {
# Create basic users, delete once foreman is updated
    users::account { "sysadmin":
      fullname => "System Admin"
    }
  } else {
# Users hash is passed from Foreman
    create_resources(users::account, $users)
  }

}

