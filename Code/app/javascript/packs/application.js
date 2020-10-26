

/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// window.jQuery = window.$ = require('jquery')
// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")

// require("jquery.min")
// require("popper.min")

// require("custom")
// require("jquery-3.0.0.min")
// require("jquery.mCustomScrollbar.concat.min")
// require("jquery.validate")
// require("plugin")
// require("bootstrap.bundle.min")

require.context('../images', true)


// console.log('Hello World from Webpacker')
import 'css/site.scss'
