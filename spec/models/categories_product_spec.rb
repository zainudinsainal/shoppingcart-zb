require 'rails_helper'

RSpec.describe CategoriesProduct, type: :model do
  
  it { is_expected.to belong_to(:product) }
  it { is_expected.to belong_to(:category) }

end
