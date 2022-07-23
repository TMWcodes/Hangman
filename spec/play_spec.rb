require 'play'

describe 'play' do
    
    it 'contains a selection of words' do
        hang = Hangman.new
       
        expect(hang.words).to include(['smile'])
    end

    it 'begins game' do
        hang = Hangman.new
        words = 
        expect(hang.begin).to eq("word size is 5 characters")
    end
end
