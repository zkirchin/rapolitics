class Rapper < ActiveRecord::Base
	has_many :agendas
	has_many :selections
end
