import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prise-medicament"
export default class extends Controller {
  connect() {
  }

  prise(event){
    console.log("je suis la")
  }
}
