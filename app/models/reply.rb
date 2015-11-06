class Reply < ActiveRecord::Base
  belongs_to :thread
  blongs_to :user
end
