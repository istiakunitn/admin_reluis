class HomeController < ApplicationController
  def index
  end

  def about_us
    render template: "home/about_us"
  end
end
