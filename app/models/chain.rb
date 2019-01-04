class Chain < ApplicationRecord
	has_many :payments
	# https://guides.rubyonrails.org/association_basics.html
	## https://revs.runtime-revolution.com/saving-multiple-models-with-form-objects-and-transactions-2c26f37f7b9a
	  accepts_nested_attributes_for :payments

end
