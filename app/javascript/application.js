// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
  const form = document.querySelector(".signup-form");
  const password = form.querySelector("#user_password");
  const passwordConfirmation = form.querySelector("#user_password_confirmation");

  form.addEventListener("submit", function(event) {
    if (password.value !== passwordConfirmation.value) {
      event.preventDefault();
      alert("Passwords do not match!");
    }
  });
});
