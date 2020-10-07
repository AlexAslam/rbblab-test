# == Schema Information
#
# Table name: user_buys
#
#  id           :bigint           not null, primary key
#  user_id      :bigint
#  buyings_type :string
#  buyings_id   :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class UserBuyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
