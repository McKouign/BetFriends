import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bets"
export default class extends Controller {
  static targets = ["reward"]
  static values = { userRewardId: Number}

  connect() {

  }

  RewardSelect(event) {

    console.log(this.rewardTargets)
    //.forEach(target => {
      //target.value = this.userRewardIdValue;
    //});

  }
}
