class PagesController < ApplicationController
    def dashboard
        # # Buscar todos os eventos
        # @eventos = Evento.all.order("data_inicio ASC")
        # # Obter arrays dos valores de cache e cover
        # valores_cache = @eventos.pluck(:cache)
        # valores_cover = @eventos.pluck(:cover)
        # # Somar os valores
        # @soma_cache = valores_cache.compact.sum
        # @soma_cover = valores_cover.compact.sum
        # @total = @soma_cache + @soma_cover
        
        # Buscar todos os eventos
        @eventos = Evento.all.order("data_inicio ASC")
        # Obter arrays dos valores de cache e cover
        valores_cache = @eventos.pluck(:cache)
        valores_cover = @eventos.pluck(:cover)
        # Somar os valores
        @soma_cache = valores_cache.compact.sum
        @soma_cover = valores_cover.compact.sum
        @total = @soma_cache + @soma_cover
        # Agrupar os eventos por mês
        # @eventos_por_mes = @eventos.group_by { |evento| evento.data_inicio.strftime("%B %Y") }
        @eventos_por_mes = @eventos.group_by { |evento| evento.data_inicio.strftime("%B") }
    end
    
    def index
    end

    def fonts
    end
end
