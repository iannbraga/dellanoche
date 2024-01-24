module ApplicationHelper
    def formatar_data_br(data)
        data.strftime("%d/%m/%Y") if data.present?
    end

    def formatar_hora_br(hora)
        hora.strftime("%H:%M") if hora.present?
    end

    def mes_br(mes)
        meses_em_portugues = {
          'January' => 'Janeiro',
          'February' => 'Fevereiro',
          'March' => 'Março',
          'April' => 'Abril',
          'May' => 'Maio',
          'June' => 'Junho',
          'July' => 'Julho',
          'August' => 'Agosto',
          'September' => 'Setembro',
          'October' => 'Outubro',
          'November' => 'Novembro',
          'December' => 'Dezembro'
        }
    
        meses_em_portugues[mes]
    end
end
