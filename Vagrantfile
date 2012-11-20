# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "bento-12.04"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
  config.vm.forward_port 80, 8080

  config.vm.provision :chef_client do |chef|
    chef.chef_server_url = "https://api.opscode.com/organizations/officehours" # replace 'officehours' with your organization name
    chef.validation_key_path = ".chef/officehours-validator.pem" # replace .chef/officehours-validator.pem with the path to your organization pem file
    chef.validation_client_name = "officehours-validator" # replace officehours-validator with the name of your validator
    chef.node_name = "local-vagrant-office-hours" # name the node anything you like
    chef.add_recipe("apache2")
    chef.add_recipe("bar")
    chef.add_recipe("foo")
  end
end
