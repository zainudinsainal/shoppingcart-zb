require 'rails_helper'

RSpec.describe Admin, type: :model do

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:password) }

  it 'should validate uniqueness of email' do 
    admin = Admin.new(
      email: "example@example.com",
      password: "123123",
    )
    expect(admin).to validate_uniqueness_of(:email).case_insensitive
  end 

end
