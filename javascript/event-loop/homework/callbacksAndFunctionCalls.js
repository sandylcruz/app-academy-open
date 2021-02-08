// Simple timeout
window.setTimeout(function () {
  alert("HAMMERTIME");} 5000);

// Timeout with closure
function hammerTime (time) {
  window.setTimeout(function () {
    alert(`${time} is hammertime!`);
  });
}

// Some tea? Some biscuits?