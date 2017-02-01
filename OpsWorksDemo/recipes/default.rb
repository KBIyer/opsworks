Chef::Log.info("********** Hello, World! **********")
script "Run a script" do
  interpreter "bash"
  code <<-EOH
    sudo dpkg --add-architecture i386; sudo apt-get update;sudo apt-get install mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux tmux lib32gcc1 libstdc++6 libstdc++6:i386
    wget https://gameservermanagers.com/dl/q3server
    chmod +x /q3server
    ./q3server install
  EOH
end
