Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "4096"
  end
  config.vm.provision "shell", path: "installall.sh"
  {
    "awx-server" => "192.168.90.10",
  }.each do |short_name, ip|
    config.vm.define short_name do |host|
      host.vm.network "private_network", ip: ip
      host.vm.hostname = "#{short_name}.local"
    end
  end
end
