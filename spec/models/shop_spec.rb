# == Schema Information
#
# Table name: shops
#
#  id             :bigint           not null, primary key
#  city           :string
#  name           :string
#  phone_number   :string
#  state          :string
#  street_address :string
#  zip_code       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require "rails_helper"

RSpec.describe Shop, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
