name "jenkins"
description "Role for jenkins build server"
run_list(
         "role[base]"
         "recipe[java]",
         "recipe[apache2]",
         "recipe[jenkins]",
         "recipe[jenkins::proxy_apache2]",
         "recipe[git]",
         "recipe[ark]",
         "recipe[maven]",
         )

