Vagrant::Config.run do |config|
  config.vm.box = 'CentOS-6.3-x86_64-minimal'
  config.vm.box_url = '../iso/CentOS-6.3-x86_64-minimal.box'
  # config.vm.boot_mode = :gui
  
  # Cloud Stack Management Server
  config.vm.define :sandbox do |sandbox|  
    sandbox.vm.host_name = 'sandbox'
    sandbox.vm.network :hostonly, "10.10.2.2" 
    # sandbox.vm.customize [
    #   "modifyvm", :id,
    #   "--name", "cloudstackhv",
    #   "--memory", "2048"
    # ]
    sandbox.vm.provision :puppet do |puppet|
      puppet.module_path = ['../puppet-modules']
      puppet.manifest_file = 'site.pp'
      puppet.options = ["--templatedir templates"]
    end
  end
end
