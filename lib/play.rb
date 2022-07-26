
class Hangman
  def initialize
    @letters =('a'..'z').to_a
    @word = words.sample
    @lives = 5
    @correct_guesses = []

    @word_teaser = ""
    @word.first.length.times do
     @word_teaser += "_"
    end
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

  def teaser last_guess = nil
    # update teaser if last guess value is not nil
    update_teaser(last_guess) unless last_guess.nil?
    puts @word_teaser
  end

  def update_teaser last_guess
    # split string based on the space between underscores.
    new_teaser = @word_teaser.split('')

    new_teaser.each_with_index do |letter, index|

    #replace blank with matching guessed letter.
      if letter == '_' && @word.first[index] == last_guess
        new_teaser[index] = last_guess
      end
    end
    # override the  instance variable forward teaser with new teaser value 
    # join array together as string, insert blank space between each of the values 
    @word_teaser = new_teaser.join('')
  end
  
  def hint
    puts "Your clue is: #{@word.last}"
    puts "Word size is #{@word.first.length} characters"
  end


  def make_guess
    if @lives > 0 
      puts "enter a letter"
      guess = gets.chomp

      #check the string being passed in (guess) is in the string (word)
      good_guess = @word.first.include? guess

      if good_guess
        puts "Correct guess"
        puts "you guessed #{guess}"

        #store the correct guess in an array
        @correct_guesses << guess

        # remove correct guess from alphabet
        @letters.delete guess
        teaser guess
        make_guess
        
        
      else
        # remove one life if guess is wrong
        @lives -= 1
        puts "wrong you have #{@lives} lives left. try again!"
        puts "you guessed #{guess}"
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

# Hangman.new.begin

