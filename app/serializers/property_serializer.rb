class PropertySerializer < BaseSerializer
    attribute :property_type
    attribute :rate
    attribute :address_name
    attribute :address_description
    attribute :guest
    attribute :location
    attribute :price
    attribute :door
    attribute :energy 
    attribute :noise  
    attribute :bedrooms
    attribute :bathrooms
    attribute :host_id

    has_many :reviews
end