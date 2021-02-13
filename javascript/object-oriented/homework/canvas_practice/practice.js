document.addEventListener("DOMContentLoaded", function () {
  const canvas = document.getElementById("mycanvas");
  const ctx = canvas.getContext("2d");

  canvas.height = 500;
  canvas.width = 500;
  // canvas.style.backgroundColor = "blue";

  ctx.fillStyle = "red";
  ctx.fillRect(200, 100, 200, 100);

  ctx.beginPath();
  ctx.arc(100, 75, 70, 0, 2 * Math.PI);
  ctx.strokeStyle = "purple";
  ctx.lineWidth = 4;
  ctx.fillStyle = "red";
  ctx.fill();
  ctx.stroke();
});
