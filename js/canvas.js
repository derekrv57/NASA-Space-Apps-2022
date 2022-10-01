const canvas = document.getElementById('canvas');
const context = canvas.getContext('2d');
function printStar(x,y,r) {

  context.beginPath();
  context.arc(x, y, r, 0, 2 * Math.PI, false);
  context.fillStyle = 'white';
  context.fill();
  context.stroke();
}

