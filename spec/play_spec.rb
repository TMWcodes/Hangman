require 'play'

describe 'play' do
    
    it 'contains a selection of words and clues' do
        hang = Hangman.new
       
        expect(hang.words).to include(["smile", "a friendly face"])
    end
    
    # it 'begins game' do
    #         expect do 
    #             Hangman.new.guess
    #         end.to output("a").to_stdout
    #     end

    # it 'begins game' do
    #     expect do 
    #         Hangman.new.begin
    #     end.to output("Game has started\nWord size is 5 characters\nYour clue is: a moving metal object\nenter a letter\n").to_stdout
    # end

    # it 'notifys player' do
    #     hang = Hangman.new
    #     expect(hang.begin).to include("Game has started")
    # end

    
    it 'provides clues' do
        hang = Hangman.new
        expect(hang.words[0].last).to eq('a friendly face')
    end

    it 'shows guess line' do
        hang = Hangman.new

        expect(hang.teaser).to eq('_____') 
    end
    
end
