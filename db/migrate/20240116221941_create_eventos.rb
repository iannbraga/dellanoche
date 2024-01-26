class CreateEventos < ActiveRecord::Migration[7.0]
  def change
    create_table :eventos do |t|
      t.string :nome_evento
      t.string :casa_de_show
      t.date :data_inicio
      t.date :data_termino
      t.time :hora_inicio
      t.time :hora_termino
      t.integer :horas_tocadas, default: 0
      t.integer :minutos_tocados, default: 0
      t.decimal :cache, precision: 8, scale: 2, default: 0
      t.decimal :covert, precision: 8, scale: 2, default: 0
      t.string :localizacao, default: ""

      t.timestamps
    end
  end
end
