class Property < ApplicationRecord
  belongs_to :host
  belongs_to :availability
  has_many :reviews
end
