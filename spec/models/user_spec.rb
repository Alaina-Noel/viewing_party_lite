require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many :user_parties }
    it { should have_many(:parties).through(:user_parties) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end

  before(:each) do
    # @instance_var = Something.create!(input)
  end

  describe 'class methods' do
    describe '#search' do
      it 'returns partial matches' do
       #method goes here
      end
    end
  end

  describe 'instance methods' do
    describe '#method_name' do
     it 'description of method' do
      #expect statement here
     end
    end
  end

end