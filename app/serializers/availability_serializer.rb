class AvailabilitySerializer < BaseSerializer
    attribute :max_nights
    attribute :min_nights

    has_many :properties
end