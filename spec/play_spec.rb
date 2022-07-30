require 'play'

describe 'play' do
    
    hang = Hangman.new
    
    it 'contains a selection of words and clues' do
        hang = Hangman.new
       
        expect(hang.words).to include(["smile", "a friendly face"])
    end
    
    it 'provides clues' do
        hang = Hangman.new
        expect(hang.words[0].last).to eq('a friendly face')
    end

    it 'has limited lives' do
        expect(hang.lives).to eq(5)
    end

    it 'fills in correct guesses' do
        hang = Hangman.new
        hang.word = hang.words.first
        hang.update_teaser('s')
        hang.word_teaser
        expect(hang.word_teaser).to eq("s____")
    end
  
    it 'has penalty for incorrect guesses' do
        hang = Hangman.new
        lives = hang.lives
        guess = 'q' 
        good_guess = hang.word.first.include? guess
        
        if !good_guess
            lives -= 1 
            else
            puts "good guess"
        end
        expect(lives).to eq(4)
    end
    
   
end
