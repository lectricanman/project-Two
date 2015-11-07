class Reply < ActiveRecord::Base
  belongs_to :post
  blongs_to :user
end
