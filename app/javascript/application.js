// import "@hotwired/turbo-rails"
import { Turbo } from "@hotwired/turbo-rails"
window.Turbo = Turbo
import Rails from '@rails/ujs'
Rails.start()

import "./controllers"

import axios from 'axios'
axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector("meta[name=csrf-token]").content
