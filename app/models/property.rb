class Property < ApplicationRecord
  belongs_to :host
  has_many :reviews
end
