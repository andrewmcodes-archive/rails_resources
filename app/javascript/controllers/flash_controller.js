import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["container"]

  connect() {
    setTimeout(function() {
      this.close()
    }, 5000)
  }

  close() {
    this.containerTarget.remove()
  }
}
