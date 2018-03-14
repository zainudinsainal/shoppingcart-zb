require 'rails_helper'

RSpec.describe Order, type: :model do
  
  it { is_expected.to define_enum_for(:status).with([:paid, :delivered, :refund, :unsuccessful]) }
  it { is_expected.to have_many(:orders_products).dependent(:destroy) }
  it { is_expected.to have_many(:products).through(:orders_products) }
  it { is_expected.to have_one(:payment).with_foreign_key('order_id').class_name('Transaction') }
  it { is_expected.to belong_to(:user) }
end
