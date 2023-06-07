import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-medicament"
export default class extends Controller {
  static targets = ["template", "forms"]

  connect() {
    console.log(this.element)
  }

  addNewForm(event) {
    event.preventDefault()
    this.formsTarget.insertAdjacentHTML("beforeend", this.templateTarget.innerHTML)
  }
}
