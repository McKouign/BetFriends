import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bets"
export default class extends Controller {
  static targets = ["reward", "ParticipationButton"]

  connect() {

  }

  RewardSelect(event) {

    const userRewardId = event.currentTarget.dataset.betsRewardValue
    this.rewardTargets.forEach(target => {
      target.value = userRewardId;
    });
  }
}
