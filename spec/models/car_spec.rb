# == Schema Information
#
# Table name: cars
#
#  id         :bigint           not null, primary key
#  make       :string
#  model      :string
#  name       :string
#  year       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_cars_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require "rails_helper"

RSpec.describe Car, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
