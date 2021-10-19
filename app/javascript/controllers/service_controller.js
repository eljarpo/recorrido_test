// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"
import StimulusReflex from 'stimulus_reflex'

export default class extends Controller {
  static targets = [ "input", 'button' ]

  connect() {

    StimulusReflex.register(this)
  }

  createService(e) {
    console.log(this.inputTarget.value)
    // e.preventDefault()
    this.stimulate('Service#create', this.inputTarget.value)
    this.inputTarget.value = ''
  }
}
