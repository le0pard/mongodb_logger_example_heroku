class TestsController < ApplicationController
  
  def index
    # index
  end
  
  def new
    Rails.logger.add_metadata(:additional_data => {:string => "some_data", :integer => 1, :boolean => true}) if Rails.logger.respond_to?(:add_metadata)
    redirect_to root_path
  end
  
  def create
    redirect_to root_path
  end
  
  def exception
    raise "Raise some exception"
  end
  
end
