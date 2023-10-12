document.addEventListener("DOMContentLoaded", function () {
    const updateSeatsButton = document.getElementById("updateSeatsButton");
    updateSeatsButton.addEventListener("click", function () {
      const selectedSeatIds = getSelectedSeatIds();
  
    //    AJAX request to update the seat statuses
      fetch("/update_seats_statuses", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          'X-CSRF-Token': getCSRFTokenValue()
        },
        body: JSON.stringify({ selected_seat_ids: selectedSeatIds }),
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.success) {
            alert("Selected seats updated successfully.");
            // to UPdate the UI 
            window.location.href = '/seats';
          } else {
            alert("Failed to update selected seats.");
          }
        })
        .catch((error) => {
          console.error("Error:", error);
          alert("An error occurred while updating seats.");
        });
    });
  
    function getSelectedSeatIds() {
      const selectedSeats = document.querySelectorAll(".seat.selected");
      return Array.from(selectedSeats).map((seat) => seat.getAttribute("data-id"));
    }
    
    function getCSRFTokenValue() {
  // Finding  the CSRF token in the HTML head
  const metaTags = document.getElementsByTagName('meta');
  for (let i = 0; i < metaTags.length; i++) {
    if (metaTags[i].getAttribute('name') === 'csrf-token') {
      return metaTags[i].getAttribute('content');
    }
  }
  return null; 
  }
  
  });