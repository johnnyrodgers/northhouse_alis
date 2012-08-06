//from http://www.nextroot.com/post/2008/09/20/Drag-and-Drop-using-iPhonee28099s-JavaScript.aspx
var currentId;
var objects = {};
var zIndex = 0;

function init() {
    document.addEventListener("touchstart", startmove, false);
    document.addEventListener("touchmove", move, false);
    document.addEventListener("touchend", endmove, false);
}

function startmove(event) {
		alert('startmove');
    var touch = event.touches[0];
    var id = touch.identifier;
    currentId = id;
    if (touch.target.className == "movable") {
        objects[id] = {
            target: touch.target,
            beginX: touch.clientX,
            beginY: touch.clientY,
            pozX: touch.target.pozXinit,
            pozY: touch.target.pozYinit
        }
        touch.target.style.opacity = 0.5;
        touch.target.style.zIndex = ++zIndex;
    }
    event.preventDefault();
}

function endmove(event) {
		alert('endmove');
    var touch = event.touches[0];
    var id = currentId;
    if (objects[id] != null) {
        if (objects[id].target.className == "movable") {
            objects[id].target.style.opacity = 1;
        }
        delete objects[id];
    }
    event.preventDefault();
}

function move(event) {
    var touch = event.touches[0];
    var id = touch.identifier;
    if (objects[id].target.className == "movable") {
        objects[id].target.pozXinit = objects[id].pozX + touch.clientX - objects[id].beginX;
        objects[id].target.pozYinit = objects[id].pozY + touch.clientY - objects[id].beginY;
        objects[id].target.style['-webkit-transform'] = 'translate(' + objects[id].target.pozXinit + 'px,' + objects[id].target.pozYinit + 'px)';
    }
    event.preventDefault();
}

function makeObjectMovable(obj) {
		alert('making object movable: ' + obj);
    obj.className = "movable";
    obj.pozXinit = 0;
    obj.pozYinit = 0;
}
