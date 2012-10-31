class Koan < ActiveRecord::Base
  attr_accessible :actual_answer, :code, :name, :proposed_answer, :question

  @@available_koans = []

  def self.available_koans
    @@available_koans
  end

  def add_to_list_of_available_koans
    @@available_koans << self
  end
end
