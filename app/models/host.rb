class Host < ApplicationRecord
    has_many :properties

    has_secure_password
end
