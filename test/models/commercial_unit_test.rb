# == Schema Information
#
# Table name: commercial_units
#
#  id         :bigint           not null, primary key
#  owner      :string           default("")
#  address    :string           default("")
#  shops      :bigint           default(0)
#  sqmt       :bigint           default(0)
#  parking    :bigint           default(0)
#  price      :decimal(, )      default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommercialUnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
