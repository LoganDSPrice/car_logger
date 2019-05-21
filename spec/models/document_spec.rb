# == Schema Information
#
# Table name: documents
#
#  id            :bigint           not null, primary key
#  image         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  shop_visit_id :bigint           not null
#
# Indexes
#
#  index_documents_on_shop_visit_id  (shop_visit_id)
#
# Foreign Keys
#
#  fk_rails_...  (shop_visit_id => shop_visits.id)
#

require "rails_helper"

RSpec.describe Document, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
