class UserAsignatura < ApplicationRecord
	belongs_to :user
	belongs_to :asignatura
end
