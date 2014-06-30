class env_var (
  $env_var = 'undef'
) {
# Groups hash is passed from Foreman
    create_resources(env_var::envars, $env_var)
  }


