require 'rails_helper'

RSpec.describe User, type: :model do

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:address) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:birthday) }
  it { is_expected.to define_enum_for(:gender).with([:male, :female]) }

  describe 'Birth date validations' do
    it { is_expected.to allow_value(100.years.ago).for(:birthday) }
    it { is_expected.not_to allow_value(100.days.from_now).for(:birthday) }
  end

  it { is_expected.to have_many(:orders) }
  it { is_expected.to have_many(:reviews) }
  it { is_expected.to have_many(:replies) }
  it { is_expected.to have_many(:reply_likes) }
  it { is_expected.to have_many(:likes) }
  it { is_expected.to have_many(:relationships) }
  it { is_expected.to have_many(:transactions) }
  it { is_expected.to have_many(:favourites) }

end
