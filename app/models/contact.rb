class Contact < ActiveRecord::Base
  attr_accessible :email, :phone, :product_id
end
