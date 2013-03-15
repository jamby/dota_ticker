// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function GetCount(ddate,iid){
	newDate = new Date(Number(ddate) * 1000);
	dateNow = new Date();    //grab current date
	amount = newDate.getTime() - dateNow.getTime();    //calc milliseconds between dates
	delete dateNow;

	// if time is already past
	if(amount < 0){
		$(iid).html("Now!")
	}
	// else date is still good
	else{
		days=0;hours=0;mins=0;secs=0;out="";

		amount = Math.floor(amount/1000);//kill the "milliseconds" so just secs

		days=Math.floor(amount/86400);//days
		amount=amount%86400;

		hours=Math.floor(amount/3600);//hours
		amount=amount%3600;

		mins=Math.floor(amount/60);//minutes
		amount=amount%60;

		secs=Math.floor(amount);//seconds

		if(days != 0){
			if(days > 1){out += days + " ";}
			out += ((days==1)?"Tomorrow":"more days");
		}
		else{
			out += (hours<=9?'0':'')+hours+((hours==1)?":":":");
			out += (mins<=9?'0':'')+mins+((mins==1)?":":":");
			out += (secs<=9?'0':'')+secs+((secs==1)?"":"");
		}
		out = out.substr(0,out.length);
		$(iid).html(out);

		setTimeout(function(){GetCount(ddate,iid)}, 1000);
	}
}

$(document).ready( function() {
	// Calling your get timer functionality
	$.each($('td.countdown_timer'), function(index, value){
	  GetCount($(value).attr('countdown_time'), value)
	})
	
	$(function() {
	    $("table.match").click(function(event) {
	        $(this).find(".hidden").slideToggle();
	    });
	});
})