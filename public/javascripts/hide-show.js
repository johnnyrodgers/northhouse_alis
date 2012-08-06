
/* This is used to show and hide div */


var c = 'mode_delete_hidden';
var ids = new Array('id1', 'id2', 'id3', 'id4'); // IDs of your <div>s
var displayText ="Edit"



function doSwap() {
c == 'mode_delete' ? c = 'mode_delete_hidden' : c = 'mode_delete';
for (var i=0; i<ids.length; i++) {
	document.getElementById(ids[i]).className = c;
}

	var text = document.getElementById("displayText");
	
	if(c== "mode_delete") {
    		
		text.innerHTML = "Done";
		text.className="active"
		
  	}
	else {
		text.className="none"
		text.innerHTML = "Edit List";
	}

}





   

    