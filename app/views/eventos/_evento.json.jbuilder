json.extract! evento, :id, :nome_evento, :casa_de_show, :data_inicio, :data_termino, :hora_inicio, :hora_termino, :horas_tocadas, :cache, :cover, :localizacao, :created_at, :updated_at
json.url evento_url(evento, format: :json)
