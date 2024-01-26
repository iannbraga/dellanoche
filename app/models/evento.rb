class Evento < ApplicationRecord

    validates :nome_evento, :casa_de_show, :data_inicio, :data_termino, :hora_inicio, :hora_termino, presence: true

    
    def valor_total
        cache + covert
    end
end
