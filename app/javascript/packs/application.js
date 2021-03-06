// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/material_orange.css';
import 'bootstrap';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

document.addEventListener('turbolinks:load', () => {
  flatpickr('.datepicker', {
    altInput: true,
    // enableTime: true,
    "disable": [
      function(date) {
          // return true to disable
          return (date.getDay() === 0 || date.getDay() === 6);
      }
  ],
  "locale": {
      "firstDayOfWeek": 0 // start week on Sunday
  }
  });

  flatpickr('.timepicker', {
    altInput: true,
    enableTime: true,
    noCalendar: true,
  });
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
