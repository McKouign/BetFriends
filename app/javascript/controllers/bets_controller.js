import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bets"
export default class extends Controller {
  static targets = ["button"]

  connect() {

  }

  betSubmit() {
    console.log("coucou")
  }
}
