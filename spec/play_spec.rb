require 'play'

describe 'play' do
    it 'begins game' do
        hang = Hangman.new
       
        expect(hang.words).to include(['smile'])
    end
end
