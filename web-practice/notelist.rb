class NoteList

attr_reader :notes

def initialize
  @notes = []
end

def write_a_note(they_said)
   @notes << they_said
end

end
