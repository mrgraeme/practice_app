class StaticPagesController < ApplicationController
  def home
    @title = "Home Page"
  end
  
  def about
    @title = "About Page"
  end

  def help
    @title = "Help Page"
  end
end
