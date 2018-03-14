require 'rails_helper'

RSpec.describe Relationship, type: :model do

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:restaurant) }

end
