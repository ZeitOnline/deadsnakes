# -*- mode: ruby -*- vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box_check_update = false

  config.vm.define "default" do |default|
    default.vm.hostname = "deadsnakes"

    default.vm.provider "lxc"
    default.vm.box = "fgrehm/trusty64-lxc"

    default.vm.provision "shell", :inline => "export DEBIAN_FRONTEND=noninteractive; echo 'deb-src http://archive.ubuntu.com/ubuntu trusty main restricted universe multiverse' >> /etc/apt/sources.list; apt-get update; apt-get -y build-dep python2.7; apt-get -y install fakeroot libjpeg62-dev libpq-dev libsasl2-dev libpcre3-dev"
  end
end
