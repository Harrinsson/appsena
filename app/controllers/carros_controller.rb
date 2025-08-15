class CarrosController < ApplicationController
    def carros2
        @carros = Carro.find(1)
    end
    def carros
        @carros = Carro.find(params[:id_carro])
    end
end
