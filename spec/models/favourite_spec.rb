require 'rails_helper'

RSpec.describe Favourite, type: :model do
  
  it { is_expected.to belong_to(:product) }
  it { is_expected.to belong_to(:user) }

end
