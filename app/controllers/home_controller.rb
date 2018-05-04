class HomeController < ApplicationController
  # before_action :authenticate_admin!
  # skip_before_action :authenticate_admin!, :only => [:index]
    def index
      p  @current_admin
      p  @current_user
    end

end
