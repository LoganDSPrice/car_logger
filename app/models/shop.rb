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

class Shop < ApplicationRecord
  has_many :shop_visits, dependent: :destroy
end
