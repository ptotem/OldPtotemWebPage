class WelcomeController < ApplicationController
  def index
  end

  def about_us
    @employees=Employee.all
  end

  def under_construction

  end

end
