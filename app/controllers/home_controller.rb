class HomeController < ApplicationController
  def index
  end

  def show
    render template: "home/about_us"
  end
end
