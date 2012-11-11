class HomeController < ApplicationController
  def index
    @koans = Koan.available_koans
  end

  def answer_koan
    puts "HomeController answer_koan"
  end
end
