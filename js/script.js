document.addEventListener("DOMContentLoaded", (function() {

	var donut = window.character;
	var rock = window.terrain;

	donut.run();

	var scriptInterval =  setInterval((function() {
		var isCollide = donut.collide(donut.donut, rock.rock);
		if (donut.isWin || isCollide) {
			if (donut.isWin) donut.isWin = !donut.isWin;
			if (isCollide) donut = window.character;
			rock = window.terrain;
			donut.run();
		}

		if (donut.characterPosition < rock.rockPosition && rock.rockPosition - donut.characterPosition < 130) {
			donut.jump();
		} 
	}), 5);

	function sendResults() {
		var xhhtp = new XMLHttpRequest();

		xhhtp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var response = this.responseText;
				console.log(response);
			}
		}

		xhttp.open("GET", "/back.php");
		xhttp.send();
	}
	
}));