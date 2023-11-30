
const seats = document.querySelectorAll('.seat');

function findBestSeatsFarAndMostCenter(numSeats) {
const bestSeats = [];

while (numSeats > 0) {
    let bestSeat = null;
    let bestScore = -Infinity;

    seats.forEach((seat) => {
    if (seat.classList.contains('available')) {
        const seatRect = seat.getBoundingClientRect();
        const centerY = seatRect.top + seatRect.height / 2;
        
        // the distance from the screen  -> (lower rows are closer)
        const distanceToScreen = seatRect.top;

        // center score -> (higher score for seats closer to the center)
        const centerScore = Math.abs(window.innerWidth / 2 - (seatRect.left + seatRect.width / 2));

        // Calculate the overall score (maximize distance, maximize center)
        const score = distanceToScreen - centerScore;

        if (score > bestScore) {
        bestScore = score;
        bestSeat = seat;
        }
    }
    });

    if (bestSeat) {
    bestSeat.classList.remove('available');
    bestSeat.classList.add('selected');
    bestSeats.push(bestSeat);
    numSeats--;
    } else {
    break; 
    }
}

return bestSeats;
}

document.getElementById('findBestSeatButton').addEventListener('click', () => {
const numSeats = parseInt(document.getElementById("numSeats").value, 10);

    seats.forEach((seat) => {
        if (seat.classList.contains('selected')) {
        seat.classList.remove('selected');
        seat.classList.add('available');
        }
    });

    if (numSeats > 0) {
    const bestSeats = findBestSeatsFarAndMostCenter(numSeats);

    if (bestSeats.length > 0) {
        const seatIds = bestSeats.map((seat) => seat.getAttribute("data-id"));
        const seatNumbers = bestSeats.map((seat) => seat.textContent);
        document.getElementById('bestSeatsDisplay').textContent = `Best Seats: ${seatNumbers.join(', ')}`;
    } else {
        document.getElementById('bestSeatsDisplay').textContent = 'Best Seats: N/A';
    }
    } else {
    alert("Please enter a valid number of seats.");
    }
});