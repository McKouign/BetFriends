import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class ModalController extends Controller {
  static targets = ["modal", "btnClose", "btnSubmit"]
  static values = {
    id: Number
  }

  connect() {
    const modal = new bootstrap.Modal(this.element)
    modal.show();

    const url = `/update_sign_in_count/${this.idValue}`
    fetch(url, { headers: { "Accept": "application/json" } })
    // this.modalDialog.addEventListener("click", (event) => {
    //   if (event.target === this.btnClose) {
    //     this.close()
    //   }
    // })
  }

  // open() {
  //   this.modal.classList.add("is-open")
  // }

  // close() {
  //   this.modal.classList.remove("is-open")
  // }
}
