# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # config.hostmanager.enabled = true
  # config.hostmanager.manage_host = true
  # config.hostmanager.ignore_private_ip = false
  # config.hostmanager.include_offline = true

  config.vm.define :jenkins do |jenkins|
    # Every Vagrant virtual environment requires a box to build off of.
    jenkins.vm.box = "jenkins"
    jenkins.vm.hostname = "jenkins.vm"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    # jenkins.vm.box_url = "file:///Users/chrismaki/dev/openEnglish/vagrant/images-vagrant/precise64.box"
    jenkins.vm.box_url = "file:///Users/chrismaki/dev/openEnglish/vagrant/images-vagrant/opscode_ubuntu-12.04-i386_chef-11.4.4.box"

    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.
    jenkins.vm.network :forwarded_port, guest: 80, host: 9000
    jenkins.vm.network :forwarded_port, guest: 8080, host: 9090
    jenkins.vm.network :forwarded_port, guest: 22, host: 9022

    jenkins.vm.provision :chef_client do |chef|
      chef.chef_server_url = "https://api.opscode.com/organizations/oe-test"
      chef.validation_key_path = "/Users/chrismaki/dev/openEnglish/chef/Development/chef-repo/.chef/oe-test-validator.pem"
      chef.validation_client_name = "oe-test-validator"
      chef.add_role "jenkins"
    end
  end

  config.vm.define :lp2build do |lp2build|
    # Every Vagrant virtual environment requires a box to build off of.
    lp2build.vm.box = "lp2build"
    
    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    lp2build.vm.box_url = "file:///Users/chrismaki/dev/openEnglish/vagrant/images-vagrant/opscode_ubuntu-12.04-i386_chef-11.4.4.box"

    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.
    lp2build.vm.network :forwarded_port, guest: 80, host: 9100
    lp2build.vm.network :forwarded_port, guest: 8080, host: 9190
    lp2build.vm.network :forwarded_port, guest: 22, host: 9122
    
  end

  # This is a test box, I was trying to see if I could use a file insread of a URL for the node.
  config.vm.define :lp2webserver do |lp2webserver|
    # Every Vagrant virtual environment requires a box to build off of.
    lp2webserver.vm.box = "lp2webserver"
    
    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    lp2webserver.vm.box_url = "file:///Users/chrismaki/dev/openEnglish/vagrant/images-vagrant/opscode_ubuntu-12.04-i386_chef-11.4.4.box"

    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.
    lp2webserver.vm.network :forwarded_port, guest: 80, host: 9200
    lp2webserver.vm.network :forwarded_port, guest: 8080, host: 9290
    lp2webserver.vm.network :forwarded_port, guest: 22, host: 9222
    lp2webserver.vm.network :forwarded_port, guest: 443, host: 9443

  end

  config.vm.define :"opscode-ubuntu-1204" do |opscode|
    # Every Vagrant virtual environment requires a box to build off of.
    opscode.vm.box = "opscode-ubuntu-1204"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    opscode.vm.box_url = "file:///Users/chrismaki/dev/openEnglish/vagrant/images-vagrant/opscode_ubuntu-12.04-i386_chef-11.4.4.box"

    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.
    opscode.vm.network :forwarded_port, guest: 80, host: 9300
    opscode.vm.network :forwarded_port, guest: 8080, host: 9390
    opscode.vm.network :forwarded_port, guest: 22, host: 9322
  end

  config.vm.define :lp2sfdc do |node|
    # Every Vagrant virtual environment requires a box to build off of.
    node.vm.box = "lp2sfdc"
    node.vm.hostname = "lp2sfdc.vm"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    node.vm.box_url = "file:///Users/chrismaki/dev/openEnglish/vagrant/images-vagrant/opscode_ubuntu-12.04-i386_chef-11.4.4.box"

    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.
    node.vm.network :private_network, ip: "10.0.0.94"
    node.vm.network :forwarded_port, guest: 80, host: 9400
    node.vm.network :forwarded_port, guest: 8080, host: 9490
    node.vm.network :forwarded_port, guest: 22, host: 9422

    # node.vm.provision :chef_client do |chef|
    #   chef.chef_server_url = "https://api.opscode.com/organizations/oe-test"
    #   chef.validation_key_path = "./.chef/oe-test-validator.pem"
    #   chef.validation_client_name = "oe-test-validator"
    #   chef.add_role "lp2sfdc"
    # end
  end

  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  # maki - config.vm.box = "opscode-ubuntu-1204"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # maki - config.vm.box_url = "file:///Users/chrismaki/dev/openEnglish/vagrant/images-vagrant/opscode_ubuntu-12.04-i386_chef-11.4.4.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # maki - config.vm.network :forwarded_port, guest: 80, host: 8888
  # config.vm.network :forwarded_port, guest: 8080, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network :private_network, ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end
  #
  # View the documentation for the provider you're using for more
  # information on available options.

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file opscode-ubuntu-1204.pp in the manifests_path directory.
  #
  # An example Puppet manifest to provision the message of the day:
  #
  # # group { "puppet":
  # #   ensure => "present",
  # # }
  # #
  # # File { owner => 0, group => 0, mode => 0644 }
  # #
  # # file { '/etc/motd':
  # #   content => "Welcome to your Vagrant-built virtual machine!
  # #               Managed by Puppet.\n"
  # # }
  #
  # config.vm.provision :puppet do |puppet|
  #   puppet.manifests_path = "manifests"
  #   puppet.manifest_file  = "init.pp"
  # end

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  # config.vm.provision :chef_solo do |chef|
  #   chef.cookbooks_path = "../my-recipes/cookbooks"
  #   chef.roles_path = "../my-recipes/roles"
  #   chef.data_bags_path = "../my-recipes/data_bags"
  #   chef.add_recipe "mysql"
  #   chef.add_role "web"
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json = { :mysql_password => "foo" }
  # end

  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision :chef_client do |chef|
  #   chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
  #   chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # If you have your own Chef Server, the default validation client name is
  # chef-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = "ORGNAME-validator"
end
