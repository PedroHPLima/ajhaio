class List < ApplicationRecord
	acts_as_list

	scope :sorted, -> { order(position: :asc) }

	has_many :cards, -> { order(position: :asc) }, dependent: :destroy

	validates :name, presence: true
end
