import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["menu"]

  collapse() {
    this.menuTarget.classList.toggle("hidden")
    this.menuTarget.classList.toggle("flex")
  }
}
