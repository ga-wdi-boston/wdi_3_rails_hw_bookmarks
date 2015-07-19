class HomepageController < ApplicationController
  def home
      @bmarks = Bmark.all
   end

   def create_new
      @bmark = Bmark.new
    end




end
