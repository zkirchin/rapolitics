class Type < ActiveRecord::Base
	has_many :agendas
	has_many :selections
end
