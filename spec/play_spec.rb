require 'play'

describe 'play' do
    
    it 'contains a selection of words and clues' do
        hang = Hangman.new
       
        expect(hang.words).to include(["smile", "a friendly face"])
    end
    
    it 'begins game' do
        hang = Hangman.new
        expect(hang.begin).to eq("word size is 5 characters")
    end
end
