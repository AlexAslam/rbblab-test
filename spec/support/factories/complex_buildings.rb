FactoryBot.define do
	factory :complex_building do
  	owner {"Me owner"}
  	address {"Me Address"}
		units { 10 }
		sqmt { 500 }
		price { 5400 }
	end
end