class OrdenLaboratoriosController < ApplicationController
  before_action :require_login

  def index
    @paciente = current_paciente
    @ordenes = @paciente.orden_laboratorios

    # Filtro por número de orden
    if params[:numero_orden].present?
      @ordenes = @ordenes.where("numero_orden LIKE ?", "%#{params[:numero_orden]}%")
    end

    # Filtro por rango de fechas
    if params[:fecha_inicio].present? && params[:fecha_fin].present?
      @ordenes = @ordenes.where(fecha_orden: params[:fecha_inicio]..params[:fecha_fin])
    end

    # Orden por fecha (asc o desc)
    orden = params[:orden] == "asc" ? :asc : :desc
    @ordenes = @ordenes.order(fecha_orden: orden)

    # Paginación (10 por página)
    @ordenes = @ordenes.page(params[:page]).per(10)
  end

  def show
    @orden = current_paciente.orden_laboratorios.find(params[:id])
  end

  private

  def require_login
    unless session[:paciente_id]
      redirect_to login_path, alert: "Debes iniciar sesión primero."
    end
  end

  def current_paciente
    @current_paciente ||= Paciente.find(session[:paciente_id])
  end
end
