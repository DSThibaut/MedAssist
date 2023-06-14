import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"



// Connects to data-controller="flatpickr-range"
export default class extends Controller {
  connect() {
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end"})],
      minDate: "today",
      dateFormat: "d-m-Y",
      mode: "range",
    })
  }

}
