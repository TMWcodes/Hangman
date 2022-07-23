
class Hangman
  def initialize
    @word = words.sample
  end

  def words
    [
      ['smile'],
      ['robot'],
      ['pedal']
      # ['candle'],
      # ['tissue']
      
    ]
    
  end
 
  def begin 
    puts "game has started"
    "word size is #{@word.first.length} characters"
  end
end

hang = Hangman.new
puts hang.begin