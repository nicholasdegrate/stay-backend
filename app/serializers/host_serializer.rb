class HostSerializer < BaseSerializer
    attribute :name
    attribute :host_since
    attribute :location
    attribute :age
    attribute :email
    attribute :phone

    has_many :properties
end