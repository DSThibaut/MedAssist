import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["date"]

  connect() {
    flatpickr(this.dateTarget, {
      minDate: "today",
      inline: false,
      enableTime: true,

      dateFormat: "d-m-Y"
      // "disable": bookings,
    })


  }
}
