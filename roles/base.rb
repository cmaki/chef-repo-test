name "base"
description "Base role for all nodes"
run_list(
         "recipe[apt]",
         "recipe[ntp]",
         "recipe[networking_basic]",
         "recipe[emacs]",
         )

