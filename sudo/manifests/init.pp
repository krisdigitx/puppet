class sudo (
   $sudo = 'undef'
) {
    include sudo::base
#pull sudoers for groups from YAML config
    create_resources(sudo::directive, $sudo)

}

