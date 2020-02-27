import "bootstrap";
import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'
flatpickr(".datepicker", {

});

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();


// import { sliderSiema } from 'slider';
// sliderSiema();
// import Siema from 'siema';

//  const mySiema = new Siema({
//   selector: '.siema',
//   duration: 200,
//   easing: 'ease-out',
//   perPage: 1,
//   startIndex: 0,
//   draggable: true,
//   multipleDrag: true,
//   threshold: 20,
//   loop: tr,
//   rtl: false,
//   onInit: () => {},
//   onChange: () => {},
// });
// document.querySelector('.prev').addEventListener('click', () => mySiema.prev());
// document.querySelector('.next').addEventListener('click', () => mySiema.next());
// console.log("hello")
