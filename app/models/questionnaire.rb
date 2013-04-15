class Questionnaire < ActiveRecord::Base
  has_many :selections
  end
