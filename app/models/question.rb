class Question < ActiveRecord::Base
  has_one :answers
  accepts_nested_attributes_for :answers
end
