import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bets"
export default class extends Controller {

  static targets = ["reward"]

  connect() {

  }

  RewardSelect(event) {
    event.preventDefault()
    console.log("coucou")
  }
}
