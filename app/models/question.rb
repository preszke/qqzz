class Question < ActiveRecord::Base
  belongs_to :lesson
  has_many :question_takens
  has_many :answears
end
