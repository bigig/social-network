class Question < ActiveRecord::Base
  attr_accessible :answer, :text, :user_id
end
