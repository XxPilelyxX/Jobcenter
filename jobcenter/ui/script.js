/*
───────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████████─██████─────────██████████████─██████─────────████████──████████─
─██░░░░░░░░░░██─██░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░██─────────██░░░░██──██░░░░██─
─██░░██████░░██─████░░████─██░░██─────────██░░██████████─██░░██─────────████░░██──██░░████─
─██░░██──██░░██───██░░██───██░░██─────────██░░██─────────██░░██───────────██░░░░██░░░░██───
─██░░██████░░██───██░░██───██░░██─────────██░░██████████─██░░██───────────████░░░░░░████───
─██░░░░░░░░░░██───██░░██───██░░██─────────██░░░░░░░░░░██─██░░██─────────────████░░████─────
─██░░██████████───██░░██───██░░██─────────██░░██████████─██░░██───────────────██░░██───────
─██░░██───────────██░░██───██░░██─────────██░░██─────────██░░██───────────────██░░██───────
─██░░██─────────████░░████─██░░██████████─██░░██████████─██░░██████████───────██░░██───────
─██░░██─────────██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██───────██░░██───────
─██████─────────██████████─██████████████─██████████████─██████████████───────██████───────
───────────────────────────────────────────────────────────────────────────────────────────
*/
window.addEventListener('message', function(event) {
	var item = event.data;

	if (item.status == true){
		$("#jobcenter").show();
		$("#loginpage").hide();
		$("#jobpage").hide();
		if(item.type == 'login') {
			$("#loginpage").show();
			if(item.job1){
				document.getElementById('jobhome1').innerHTML = `${item.job1} - ${item.job2} - ${item.job3} - ${item.job4}`
				document.getElementById('jobhome2').innerHTML = `${item.job5} - ${item.job6} - ${item.job7} - ${item.job8} - ${item.job9}`
			}
		}
		if(item.type == 'jobpage') {
			$("#jobpage").show();
			if(item.job1){
				document.getElementById('job1').innerHTML = `${item.job1}`
				document.getElementById('job2').innerHTML = `${item.job2}`
				document.getElementById('job3').innerHTML = `${item.job3}`
				document.getElementById('job4').innerHTML = `${item.job4}`
				document.getElementById('job5').innerHTML = `${item.job5}`
				document.getElementById('job6').innerHTML = `${item.job6}`
				document.getElementById('job7').innerHTML = `${item.job7}`
				document.getElementById('job8').innerHTML = `${item.job8}`
				document.getElementById('job9').innerHTML = `${item.job9}`
			}
		}
	}
	else if (item.status == false){
    $("#jobcenter").hide();
	}

});

$(document).keyup(function(e) {
	if (e.keyCode == 27) {
		$("#jobcenter").fadeOut();
		$("#loginpage").hide();
		$("#jobpage").hide();
	  $.post("http://jobcenter/close");
	}
});

function Login(){
	$("#loginpage").hide();
	$.post("http://jobcenter/jobpageopen");
}

/* Job knapper */
function job1(){
	$.post("http://jobcenter/job1");
}

function job2(){
	$.post("http://jobcenter/job2");
}

function job3(){
	$.post("http://jobcenter/job3");
}

function job4(){
	$.post("http://jobcenter/job4");
}

function job5(){
	$.post("http://jobcenter/job5");
}

function job6(){
	$.post("http://jobcenter/job6");
}

function job7(){
	$.post("http://jobcenter/job7");
}

function job8(){
	$.post("http://jobcenter/job8");
}

function job9(){
	$.post("http://jobcenter/job9");
}