class Koan < ActiveRecord::Base
  attr_accessible :actual_answer, :code, :name, :proposed_answer, :question
end
