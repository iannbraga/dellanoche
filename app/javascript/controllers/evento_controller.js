import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="evento"
export default class extends Controller {
  static targets = ["horas", "minutos"];

  connect() {
    console.log("Conectado")
  }

  validate() {
    let horas = parseInt(this.horasTarget.value, 10);
    let minutos = parseInt(this.minutosTarget.value, 10);

    if (Number.isInteger(horas) && Number.isInteger(minutos) && horas >= 0 && minutos >= 0 && minutos < 60) {
      // Os valores são válidos
      return;
    }

    if(minutos < 0){
      minutos = 0
    }

    if(minutos > 59){
      horas = horas + 1
      minutos = 0
    }
    // Atualiza os campos com os valores corrigidos
    this.horasTarget.value = horas;
    this.minutosTarget.value = minutos;
  }
}
