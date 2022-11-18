require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Lola', email: 'lola@mail.com', password: '123456')
    @user.save
  end

  it 'Should has a valid value' do
    expect(@user).to be_valid
  end
end
