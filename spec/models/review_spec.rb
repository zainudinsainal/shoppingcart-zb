require 'rails_helper'

RSpec.describe Review, type: :model do
  
  it { is_expected.to validate_presence_of(:content) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:product) }

  it { is_expected.to have_many(:likes).dependent(:destroy) }
  it { is_expected.to have_many(:replies).dependent(:destroy) }

end
