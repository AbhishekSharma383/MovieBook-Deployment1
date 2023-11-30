
document.addEventListener("DOMContentLoaded", function () {
  const seats = document.querySelectorAll('.seat');

  seats.forEach((seat) => {
    seat.addEventListener('click', () => {
    if (seat.classList.contains('reserved')) {
        return;
    }
    if (seat.classList.contains('selected')) {
        seat.classList.remove('selected');
        seat.classList.add('available');
    } else {
        seat.classList.add('selected');
    }
    });
  });
});
