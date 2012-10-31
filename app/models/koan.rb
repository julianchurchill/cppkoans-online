class Koan
  attr_accessor :actual_answer, :code, :question

  @@available_koans = []

  def self.available_koans
    @@available_koans
  end

  def add_to_list_of_available_koans
    @@available_koans << self
  end
end
