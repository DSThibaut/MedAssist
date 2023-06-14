class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_title

  def set_title
    @title = "titre par defaut"
  end
end
