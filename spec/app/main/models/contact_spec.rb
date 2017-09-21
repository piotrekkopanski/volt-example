
require 'spec_helper'
RSpec.describe :contact, type: :model do 
  let!(:contact) {(:contact)}

 
  it "has a valid factory" do 
  expect(contact).not_to be_empty
 end
  it 'returns an array with a single error' do
       
         validate_presence_of :name
        
      end
    it { is_expected.to validate_presence_of(:name) }
  
end



  