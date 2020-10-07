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

class UserBuy < ApplicationRecord
	belongs_to :buyings, :polymorphic => true
end
