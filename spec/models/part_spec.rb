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

require "rails_helper"

RSpec.describe Part, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
