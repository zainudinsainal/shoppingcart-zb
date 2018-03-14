require 'rails_helper'

RSpec.describe Category, type: :model do

  it { is_expected.to have_many(:categories_products).dependent(:destroy) }
  it { is_expected.to have_many(:products).through(:categories_products) }

end
