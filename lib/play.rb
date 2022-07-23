
class Hangman
  def initialize
    @word = words.sample
  end

  def words
    [
      ['smile', "a friendly face"],
      ['robot', "a moving metal object"],
      ['pedal', "found on a bike"]
      # ['candle', "used to illuminate darkness"],
      # ['tissue', "used to wipe surfaces"]
      
    ]
    
  end

  def teaser
    word_teaser = ""
    @word.first.length.times do
     word_teaser += "_"
    end
    word_teaser
  end
  
  def hint
    puts "Word size is #{@word.first.length} characters"
    puts "Your clue is: #{@word.last}"
  end

  def begin 
    puts "Game has started"
    puts "enter a letter"
    puts hint
    puts teaser
  end

  def guess
    # guess = gets.chomp.downcase
    guess = "A".downcase
    puts "#{guess}"
    

  end




end

hang = Hangman.new
hang.begin
# hang.teaser
# puts hang.words[0].last
# puts hang.words.sample.last
