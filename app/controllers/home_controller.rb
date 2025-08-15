class HomeController < ApplicationController
  before_action :require_login_paciente, only: [:paciente_home]

  def paciente_home
    @paciente = Paciente.find(session[:paciente_id])
  end

  private

  def require_login_paciente
    unless session[:paciente_id]
      redirect_to login_path, alert: "Debes iniciar sesión primero."
    end
  end

  def current_paciente
    @current_paciente ||= Paciente.find(session[:paciente_id]) if session[:paciente_id]
  end
  helper_method :current_paciente
end
