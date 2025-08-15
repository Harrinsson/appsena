class SessionsController < ApplicationController
  def new
  end

  def create
    # Mostrar en consola lo que llega
    Rails.logger.info "Params recibidos: #{params.inspect}"

    begin
      fecha = Date.parse(params[:fechanacido])
    rescue ArgumentError
      fecha = nil
    end

    paciente = Paciente.find_by(
      tipoid: params[:tipoid],
      identificacion: params[:identificacion],
      fechanacido: fecha
    )

    if paciente
      session[:paciente_id] = paciente.id
      redirect_to paciente_home_path, notice: "Inicio de sesión exitoso"
    else
      flash.now[:alert] = "Datos inválidos, por favor verifica"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:paciente_id)
    redirect_to login_path, notice: "Sesión cerrada"
  end
end
