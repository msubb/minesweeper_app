// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", () => {
  const form = document.querySelector('form');
  if (form) {
    form.addEventListener('submit', (event) => {
      const width = parseInt(document.querySelector('#minesweeper_board_width').value);
      const height = parseInt(document.querySelector('#minesweeper_board_height').value);
      const mines = parseInt(document.querySelector('#minesweeper_board_mines').value);

      if (mines > width * height) {
        event.preventDefault();
        alert("The number of mines cannot be greater than the number of squares on the board.");
      }
    });
  }
});
