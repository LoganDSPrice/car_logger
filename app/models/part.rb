# == Schema Information
#
# Table name: parts
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  car_id     :bigint           not null
#
# Indexes
#
#  index_parts_on_car_id  (car_id)
#
# Foreign Keys
#
#  fk_rails_...  (car_id => cars.id)
#

class Part < ApplicationRecord
  belongs_to :car
  has_many :services, dependent: :destroy
end
