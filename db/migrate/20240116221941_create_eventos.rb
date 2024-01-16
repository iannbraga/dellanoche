class CreateEventos < ActiveRecord::Migration[7.0]
  def change
    create_table :eventos do |t|
      t.string :nome_evento
      t.string :casa_de_show
      t.date :data_inicio
      t.date :data_termino
      t.time :hora_inicio
      t.time :hora_termino
      t.time :horas_tocadas
      t.decimal :cache
      t.decimal :cover
      t.string :localizacao

      t.timestamps
    end
  end
end
