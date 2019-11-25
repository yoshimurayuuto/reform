class Discussion < ApplicationRecord
  has_many :comments, dependent: :destroy
end
