import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bets"
export default class extends Controller {
  static targets = ["reward"]
  //static values = { userRewardId: number}

  connect() {

  }

  RewardSelect(event) {
    event.preventDefault()
    console.log(this.rewardTarget);
    console.log(this.rewardTarget);
    console.log(this.rewardTarget);

    const usedReward = this.userRewardIdValue;
    this.rewardTargets.forEach(target => {
        target.value = usedReward;
    });

  }
}
