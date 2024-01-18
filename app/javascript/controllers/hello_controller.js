import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['entrada', 'saida']

  connect() {
    console.log('Conectei')
  }

  fontes() {
    let entrada = this.entradaTarget.value;

    this.saidaTargets.forEach(saida => {
      let outputId = saida.dataset.outputId; // Obtém o ID da saída do atributo de dados
      this.element.querySelector(`[data-output-id="${outputId}"]`).textContent = entrada;
    });
  }
}
