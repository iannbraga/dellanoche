require "application_system_test_case"

class EventosTest < ApplicationSystemTestCase
  setup do
    @evento = eventos(:one)
  end

  test "visiting the index" do
    visit eventos_url
    assert_selector "h1", text: "Eventos"
  end

  test "should create evento" do
    visit eventos_url
    click_on "New evento"

    fill_in "Cache", with: @evento.cache
    fill_in "Casa de show", with: @evento.casa_de_show
    fill_in "Cover", with: @evento.cover
    fill_in "Data inicio", with: @evento.data_inicio
    fill_in "Data termino", with: @evento.data_termino
    fill_in "Hora inicio", with: @evento.hora_inicio
    fill_in "Hora termino", with: @evento.hora_termino
    fill_in "Horas tocadas", with: @evento.horas_tocadas
    fill_in "Localizacao", with: @evento.localizacao
    fill_in "Nome evento", with: @evento.nome_evento
    click_on "Create Evento"

    assert_text "Evento was successfully created"
    click_on "Back"
  end

  test "should update Evento" do
    visit evento_url(@evento)
    click_on "Edit this evento", match: :first

    fill_in "Cache", with: @evento.cache
    fill_in "Casa de show", with: @evento.casa_de_show
    fill_in "Cover", with: @evento.cover
    fill_in "Data inicio", with: @evento.data_inicio
    fill_in "Data termino", with: @evento.data_termino
    fill_in "Hora inicio", with: @evento.hora_inicio
    fill_in "Hora termino", with: @evento.hora_termino
    fill_in "Horas tocadas", with: @evento.horas_tocadas
    fill_in "Localizacao", with: @evento.localizacao
    fill_in "Nome evento", with: @evento.nome_evento
    click_on "Update Evento"

    assert_text "Evento was successfully updated"
    click_on "Back"
  end

  test "should destroy Evento" do
    visit evento_url(@evento)
    click_on "Destroy this evento", match: :first

    assert_text "Evento was successfully destroyed"
  end
end
