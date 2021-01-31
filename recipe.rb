include_recipe 'bedrock_server'

execute 'ufw --force enable'
execute 'ufw allow 22/tcp'
execute 'ufw allow 19132/udp'
execute 'ufw reload'
