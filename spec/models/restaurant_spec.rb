require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  
  it { is_expected.to have_many(:products).dependent(:destroy) }
  it { is_expected.to have_many(:relationships).dependent(:destroy) }

end
