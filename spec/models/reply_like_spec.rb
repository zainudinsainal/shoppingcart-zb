require 'rails_helper'

RSpec.describe ReplyLike, type: :model do

  it { is_expected.to belong_to(:reply) }
  it { is_expected.to belong_to(:user) }
  
end
