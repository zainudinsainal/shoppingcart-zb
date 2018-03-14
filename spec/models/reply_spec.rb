require 'rails_helper'

RSpec.describe Reply, type: :model do

  it { is_expected.to belong_to(:review) }
  it { is_expected.to belong_to(:user) }

  it { is_expected.to have_many(:reply_likes).dependent(:destroy) }

  it { is_expected.to validate_presence_of(:body) }

end
