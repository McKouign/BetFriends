import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bet-buttons"
export default class extends Controller {
  static targets = ['submit']

  disable(event) {
    this.submitTargets.forEach(submit => {
      submit.disabled = true
    });
    event.currentTarget.classList.add("disabled")
  }

}
