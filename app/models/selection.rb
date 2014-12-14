class Selection < ActiveRecord::Base
	belongs_to :rapper
	belongs_to :type

	validates :rapper_id, :type_id, presence: true
end
