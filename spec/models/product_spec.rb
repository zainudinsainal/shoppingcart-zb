require 'rails_helper'

RSpec.describe Product, type: :model do
  
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:price) }

  it { is_expected.to have_many(:categories_products).dependent(:destroy) }
  it { is_expected.to have_many(:categories).through(:categories_products) }

  it { is_expected.to have_many(:orders_products).dependent(:destroy) }
  it { is_expected.to have_many(:orders).through(:orders_products) }

  it { is_expected.to have_many(:reviews).dependent(:destroy) }
  it { is_expected.to have_many(:favourites).dependent(:destroy) }

  it { is_expected.to belong_to(:restaurant) }

end
