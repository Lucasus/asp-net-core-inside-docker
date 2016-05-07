# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

Vagrant.configure("2") do |config|
    config.vm.define "asp-core" do |machine|

        machine.vm.provider :docker do |d|
            d.name = 'asp-core'
            d.build_dir = "."
            d.remains_running = true
            d.vagrant_machine = "docker-host"
            d.vagrant_vagrantfile = "./docker-host/Vagrantfile"
            d.ports = ["5000:5000"]
        end
    end
end
