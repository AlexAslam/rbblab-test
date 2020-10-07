# == Schema Information
#
# Table name: complex_buildings
#
#  id         :bigint           not null, primary key
#  owner      :string           default("")
#  address    :string           default("")
#  units      :bigint           default(0)
#  sqmt       :bigint           default(0)
#  price      :decimal(, )      default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ComplexBuilding < ApplicationRecord
	has_many :user_buys, as: :buyings, dependent: :destroy
end
