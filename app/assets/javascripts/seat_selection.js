
document.addEventListener("DOMContentLoaded", function () {
  const seats = document.querySelectorAll('.seat');

  seats.forEach((seat) => {
    seat.addEventListener('click', () => {
    if (seat.classList.contains('reserved')) {
        return;
    }
    if (seat.classList.contains('selected')) {
        seat.classList.remove('selected');
    } else {
        seat.classList.add('selected');
    }
    });
  });
});
