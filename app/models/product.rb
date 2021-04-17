# == Schema Information
#
# Table name: products
#
#  id             :bigint           not null, primary key
#  amount         :float
#  comments_count :integer
#  like_count     :integer
#  name           :string
#  original_price :float
#  price          :float
#  rating         :integer
#  rating_count   :integer
#  status         :integer
#  supplier       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :bigint
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
class Product < ApplicationRecord
end
