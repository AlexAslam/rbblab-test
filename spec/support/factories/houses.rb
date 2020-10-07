FactoryBot.define do
  factory :house do
  	owner {"Me owner"}
  	address {"Me Address"}
  	rooms { 10 }
  	sqmt { 300 }
  	floors { 1 }
  	air_cond { true }
  	price { 5000 }
  end
end
