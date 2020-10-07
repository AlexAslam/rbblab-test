FactoryBot.define do
	factory :commercial_unit do
		owner { "Me Owner" }
		address { "Me Address" }
		shops { 10 }
		sqmt { 1000 }
		parking { 100000 }
		price { 5000000 }
	end
end