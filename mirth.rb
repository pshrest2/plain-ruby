require "socket"

PORT = 1337
server = TCPServer.new(PORT)

loop do
    client = server.accept

    request_line = client.readline
    puts "HTTP request looks like this #{request_line}"
    method_token, target, version_number = request_line.split 
    response_body =  "Received a #{method_token} request to #{target} with #{version_number}"
    client.puts response_body
    client.close
end