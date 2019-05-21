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

class Car < ApplicationRecord
  belongs_to :user
  has_many :shop_visits, dependent: :destroy
  has_many :parts, dependent: :destroy
end
