{
  "name": "lp2build",
  "chef_type": "role",
  "json_class": "Chef::Role",
  "description": "The base role for all LP2 build nodes"
  "run_list": [
               "recipe[java]",
              ],
  "env_run_lists" : {
    "production" : [],
    "preprod" : [],
    "dev": [
            "role[base]",
            "recipe[emacs]",
            "recipe[git]",
            "recipe[ark]",
            "recipe[maven]",
           ],
    "test": [
             "role[base]",
             "recipe[apache]"
            ]
  },
  "override_attributes": {
    "apache2": {
      "max_children": "50"
    }
  }
}
