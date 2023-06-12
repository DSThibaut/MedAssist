import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prise-medicament"
export default class extends Controller {
  connect() {
  }

  prise(event){
    event.preventDefault();
    console.log(event,"je suis la")
  }
}
