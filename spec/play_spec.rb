require 'play'
describe 'Bouncer' do
    it 'bounces it' do
        b = Bouncer.new
        bounced = b.bounce('it')
        expect(bounced).to be_truthy
    end
    
end