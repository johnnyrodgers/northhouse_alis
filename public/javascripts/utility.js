/* JAVASCRIPT UTILITY FUNCTIONS - North House GUI - June 3rd 2009 - Johnny Rodgers */

//returns the flipped value of a number between 0 and 100.  This is used for the sliders
function flipValue(val) { return 100 - val; }

function getDisplayAngle(degrees) {
	switch(degrees) {
		case 55:
			display_angle = "&#47;";
			break;
		case 90:
			display_angle = "&#8212;";
			break;
		case 125:
			display_angle = "&#92;";
			break;
		case 140:
			display_angle = "&#124;";
			break;
		case 160:
			display_angle = "&#124;";
			break;
	}
	return display_angle;
}

//addLoadEvent collects functions to be fired when the DOM is ready in an array, to avoid serial calls to document.observe("dom:loaded") from overwriting each other
//adapted from http://www.dyn-web.com/tutorials/combine.php
function addLoadEvent(func) {
	//assign existing functions to a variable
  var existingFunctions = window.loadFunctions;
  //check for existing array
  if (window.loadFunctions == undefined) {
    //create array and add function
		window.loadFunctions = [func];
  } 
  else {
  	//push function onto existing array
    window.loadFunctions.push(func);
  }
}

//adapted from http://keithdevens.com/weblog/archive/2007/Jun/07/javascript.clone
function recursive_clone(obj){
  if(obj == null || typeof(obj) != 'object')
      return obj;
  var temp = new obj.constructor();
  for(var key in obj)
      temp[key] = recursive_clone(obj[key]);
  return temp;
}