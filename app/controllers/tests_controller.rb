class TestsController < ApplicationController
  
  def index
    # index
  end
  
  def new
    Rails.logger.add_metadata(:additional_data => {:string => "some_data", :integer => 1, :boolean => true}) if Rails.logger.respond_to?(:add_metadata)
    flash[:notice] = "Information into log added. Check it on the web."
    redirect_to root_path
  end
  
  def create
    flash[:notice] = "Information into log added. Check it on the web."
    redirect_to root_path
  end
  
  def exception
    raise "Raise some exception"
  end
  
end
