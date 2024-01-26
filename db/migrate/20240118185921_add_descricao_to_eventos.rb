class AddDescricaoToEventos < ActiveRecord::Migration[7.0]
  def change
    add_column :eventos, :descricao, :text, default: ""
  end
end
