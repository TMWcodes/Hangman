
class Hangman
  def initialize
    @word = words.sample
    @lives = 5
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
    puts "Your clue is: #{@word.last}"
    puts "Word size is #{@word.first.length} characters"
  end


  def make_guess
    if @lives > 0 
      puts "enter a letter"
      guess = gets.chomp
      # guess = "A".downcase

      good_guess = @word.first.include? guess

      if good_guess
        puts "good guess"
        make_guess
      else
        @lives -= 1
        puts "wrong you have #{@lives} lives left. try again!"
        make_guess
      end

    else 
      puts "game over"
    end
  end

  def begin 
    puts "Game has started"
    puts hint
    puts teaser
    puts make_guess
  end


end

hang = Hangman.new
hang.begin
# hang.teaser
# puts hang.words[0].last
# puts hang.words.sample.last
