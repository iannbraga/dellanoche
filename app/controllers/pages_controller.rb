class PagesController < ApplicationController
    def dashboard
        # # Buscar todos os eventos
        # @eventos = Evento.all.order("data_inicio ASC")
        # # Obter arrays dos valores de cache e covert
        # valores_cache = @eventos.pluck(:cache)
        # valores_covert = @eventos.pluck(:covert)
        # # Somar os valores
        # @soma_cache = valores_cache.compact.sum
        # @soma_covert = valores_covert.compact.sum
        # @total = @soma_cache + @soma_covert
        
        # Buscar todos os eventos
        @eventos = Evento.all.order("data_inicio ASC")
        # Obter arrays dos valores de cache e covert
        valores_cache = @eventos.pluck(:cache)
        valores_covert = @eventos.pluck(:covert)
        # Somar os valores
        @soma_cache = valores_cache.compact.sum
        @soma_covert = valores_covert.compact.sum
        @total = @soma_cache + @soma_covert
        # Agrupar os eventos por mês
        # @eventos_por_mes = @eventos.group_by { |evento| evento.data_inicio.strftime("%B %Y") }
        @eventos_por_mes = @eventos.group_by { |evento| evento.data_inicio.strftime("%B") }
    end
    
    def index
    end

    def fonts
    end
end
