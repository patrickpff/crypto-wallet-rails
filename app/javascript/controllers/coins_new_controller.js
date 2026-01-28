import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="coins-new"
export default class extends Controller {
  connect() {
    console.log("Coins New Controller connected 🚀")
  }
}
