var oldx, oldy;
var canvas, con, canvasTop = 80;
var colors = ["black", "red", "blue"];
var cIndex = 0;
 
function $ (id) {
    return document.getElementById(id);
}
 
window.onload = function() {
     
    // get context of canvas
    canvas = $("a_canvas");
    con = canvas.getContext("2d");
    con.strokewidth = 2;
    con.strokeStyle = "black";
     
    // touch event for smart phone
    canvas.ontouchstart = function(e) {drawLine(e, true);};
    canvas.ontouchmove = function(e) {drawLine(e, false);};
    canvas.ontouchend = function(e) {drawLine(e, false);};
 
    $("header").onclick = function(e) {cChange();};
    $("footer").onclick = function(e) {clear();};
 
};    
 
function cChange () {
     
    var cur = colors[(++cIndex) % colors.length];
    $("header").style.backgroundColor = cur;
    con.strokeStyle = cur;
   
}
 
function clear () {
    con.fillStyle = "white";
    con.fillRect(0, 0, canvas.width, canvas.height);
}
 
function drawLine(event, isStart) {
    event.preventDefault();
    var t = event.touches[0];
    var mx = t.pageX;
    var my = t.pageY - canvasTop;
 
    if (isStart) {
        oldX = mx -1;
        oldY = my -1;
    }
     
    con.beginPath();
    con.moveTo(oldX, oldY);
    con.lineTo(mx, my);
    con.stroke();
 
    oldX = mx;
    oldY = my;
}