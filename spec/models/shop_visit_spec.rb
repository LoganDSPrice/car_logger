# == Schema Information
#
# Table name: shop_visits
#
#  id         :bigint           not null, primary key
#  date       :date
#  ends_on    :date
#  miles      :integer
#  starts_on  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  car_id     :bigint           not null
#  shop_id    :bigint           not null
#
# Indexes
#
#  index_shop_visits_on_car_id   (car_id)
#  index_shop_visits_on_shop_id  (shop_id)
#
# Foreign Keys
#
#  fk_rails_...  (car_id => cars.id)
#  fk_rails_...  (shop_id => shops.id)
#

require "rails_helper"

RSpec.describe ShopVisit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
