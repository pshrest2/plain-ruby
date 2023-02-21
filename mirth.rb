require "socket"

PORT = 1337
server = TCPServer.new(PORT)

loop do
    client = server.accept

    client.puts "What's your name?"
    input = client.gets
    puts "Received #{input.chomp} from a client socket on port #{PORT}"
    client.puts "Hi, #{input.chomp}! You've successfully connected to the server socket."

    puts "Closing client socket"
    client.puts "GoodBye #{input.chomp}"
    client.close
end