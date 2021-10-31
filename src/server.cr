#     author: thibault@desaules.me
#     contributor: none
#     licence: Apache License, Version 2.0 (https://opensource.org/licenses/Apache-2.0)

require "kemal"

get "/" do |env|
  send_file(env, "./public/index.html", "text/html")
end 

ws "/socket" do |socket|
  socket.send "Hello from Kemal!"
end

Kemal.config.port = 5000
Kemal.run