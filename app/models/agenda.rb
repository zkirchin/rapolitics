class Agenda < ActiveRecord::Base
	belongs_to :type
	belongs_to :rapper
end
