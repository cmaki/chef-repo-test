name "base"
  description "Base role applied to all nodes (build server in this example)"
  run_list(
           "recipe[apt]",
           "recipe[java]",
           "recipe[aliases]",
           "recipe[ntp]",
           "recipe[apache2]",
           "recipe[networking_basic]",
           "recipe[jenkins]",
           "recipe[jenkins::proxy_apache2]",
           "recipe[emacs]",
           "recipe[git]",
           "recipe[ark]",
           "recipe[maven]",
  )

