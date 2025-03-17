class CarrosController < ApplicationController
    def carros
        @carros = Carro.find(params[:id_carro])
    end
end
