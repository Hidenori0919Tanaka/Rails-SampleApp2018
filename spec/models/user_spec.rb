require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#password=' do
    example 'case 1' do
      user = User.new
      user.password = 'user'
      expect(user.hashed_password).to be_kind_of(String)
      expect(user.hashed_password.size).to eq(60)
    end
    example 'case 2' do
      user = User.new(hashed_password: 'x')
      user.password = nil
      expect(user.hashed_password).to be_nil
    end
  end
end
