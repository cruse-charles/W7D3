require 'rails_helper'

RSpec.describe User, type: :model do
  
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_length_of(:password_digest).is_at_least(6)}

  # describe 'uniqueness' do
  #   before :each do
  #     create (:user)
  #   end
  # end

  subject(:user) {
    User.new(
      username: 'A',
      password_digest: '123456'
    )
  }

  it {should validate_uniqueness_of(:username)}
end
