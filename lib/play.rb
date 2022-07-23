
class Hangman
  def initialize
    @word = words.sample
  end

  def words
    [
      ['smile', "a friendly face"],
      ['robot', "a moving metal object"],
      ['pedal', "found on a bike"],
      ['candle', "used to illuminate darkness"],
      ['tissue', "used to wipe surfaces"]
      
    ]
    
  end
  def begin 
    puts "game has started"
    puts "your clue is: #{@word.last}"
    "word size is #{@word.first.length} characters"
  end
end

hang = Hangman.new
# puts hang.words.sample
puts hang.begin
