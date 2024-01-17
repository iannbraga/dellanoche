module ApplicationHelper
    def formatar_data_br(data)
        data.strftime("%d/%m/%Y") if data.present?
    end

    def formatar_hora_br(hora)
        hora.strftime("%H:%M") if hora.present?
    end
end
