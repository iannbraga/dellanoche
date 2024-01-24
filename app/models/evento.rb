class Evento < ApplicationRecord

    def valor_total
        cache + cover
    end
end
