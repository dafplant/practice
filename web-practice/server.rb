require 'socket'
require_relative 'notelist'

server = TCPServer.open(6789)

socket = server.accept

note = NoteList.new
loop {
socket.puts "What do you say?"

they_said = socket.gets.chomp
note.write_a_note(they_said)

socket.puts "You said: #{they_said}"

if they_said == "quit"
  note.notes.pop
  p note.notes
  socket.close
  break
end
}
