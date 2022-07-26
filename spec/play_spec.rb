require 'play'

describe 'play' do
    
    it 'contains a selection of words and clues' do
        hang = Hangman.new
       
        expect(hang.words).to include(["smile", "a friendly face"])
    end


    
    it 'provides clues' do
        hang = Hangman.new
        expect(hang.words[0].last).to eq('a friendly face')
    end

    
end
