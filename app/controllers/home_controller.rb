class HomeController < ApplicationController
  def index
    @koans = Koan.available_koans
  end
end
