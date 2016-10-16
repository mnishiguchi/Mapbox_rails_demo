// Require exported modules that are required here.
const clickable           = require("./maps/clickable");
const data_binding        = require("./maps/data_binding");
const directions          = require("./maps/directions");
const flyby               = require("./maps/flyby");
const geocoder            = require("./maps/geocoder");
const languages           = require("./maps/languages");
const navigation_controls = require("./maps/navigation_controls");
const restriction_pane    = require("./maps/restriction_pane");

// Create our App object.
window.App      = window.App      || {};
window.App.maps = window.App.maps || {};

// Expose our code for Mapbox.
window.App.maps.clickable           = clickable;
window.App.maps.data_binding        = data_binding;
window.App.maps.directions          = directions;
window.App.maps.flyby               = flyby;
window.App.maps.geocoder            = geocoder;
window.App.maps.languages           = languages;
window.App.maps.navigation_controls = navigation_controls;
window.App.maps.restriction_pane    = restriction_pane;

// Expose Mapbox API key.
window.mapboxgl.accessToken = 'pk.eyJ1IjoicG1pbGxlcmsiLCJhIjoiY2lyM3VjMzNsMDFkZHR4bHdxOWs1amt1MiJ9.nc1fPKTYXlgC1zVoYS2Oag';
