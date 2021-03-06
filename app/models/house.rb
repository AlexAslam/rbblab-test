# == Schema Information
#
# Table name: houses
#
#  id         :bigint           not null, primary key
#  owner      :string           default("")
#  address    :string           default("")
#  rooms      :bigint           default(0)
#  sqmt       :bigint           default(0)
#  floors     :bigint           default(0)
#  air_cond   :boolean          default(FALSE)
#  price      :decimal(, )      default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class House < ApplicationRecord
	has_many :user_buys, as: :buyings, dependent: :destroy
end
