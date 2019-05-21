# == Schema Information
#
# Table name: services
#
#  id            :bigint           not null, primary key
#  cost          :float
#  description   :string
#  notes         :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  part_id       :bigint           not null
#  shop_visit_id :bigint           not null
#
# Indexes
#
#  index_services_on_part_id        (part_id)
#  index_services_on_shop_visit_id  (shop_visit_id)
#
# Foreign Keys
#
#  fk_rails_...  (part_id => parts.id)
#  fk_rails_...  (shop_visit_id => shop_visits.id)
#

class Service < ApplicationRecord
  belongs_to :part
  belongs_to :shop_visit
end
