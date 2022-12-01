require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject { User.new(username: 'brian', email: 'brian@gmail.com', password: '123456') }
    before { subject.save }

    it 'check the username is not blank' do
      subject.username = nil
      expect(subject).to_not be_valid
    end
  end

  context 'associations' do
    it 'has many appointments' do
      assc = described_class.reflect_on_association(:appointments)
      expect(assc.macro).to eq :has_many
    end
  end
end
