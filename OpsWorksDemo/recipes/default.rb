Chef::Log.info("********** Hello, World! **********")
script "Run a script" do
  interpreter "bash"
  code <<-EOH
    sudo dpkg --add-architecture i386; sudo apt-get update;sudo apt-get install -y mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux tmux lib32gcc1 libstdc++6 libstdc++6:i386
    sudo adduser q3server --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
    sudo wget https://gameservermanagers.com/dl/q3server
    sudo chmod +x q3server
    sudo ./q3server auto-install
  EOH
end
Chef::Log.info("********** Bye, World! **********")
