class Universidad < ApplicationRecord
	has_many :departamentos, dependent: :destroy
end
