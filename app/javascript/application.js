// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

// JS pour le bouton de la navbar traitement
document.querySelector('.navbar-traitement-right a').addEventListener('click', function(e) {
  e.preventDefault();
  document.querySelector('#submit-button').click();
});
