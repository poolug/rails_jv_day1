class ApplicationController < ActionController::Base
  def authorize_taster!
    unless current_user.taster?
      flash[:alert]= 'Debes ser catador para poder realizar esta acción'
      redirect_to root_path
    end
  end
end
