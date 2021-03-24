document.addEventListener("DOMContentLoaded", (function() {

	var donut = window.character;
	var rock = window.terrain;
	var results = {};
	var start = new Date().getTime();
	var jumpPosition = 0;
	var resultURL = '/backend/ajax.php';

	donut.run();

	var automationInt = setInterval((function() {

		var isCollide = donut.collide(donut.donut, rock.rock);

		if (donut.isWin || isCollide) {
			var end = new Date().getTime();

			results = {
				rockPosition: rock.rockPosition,
				duration: end - start,
				jumpPosition: jumpPosition,
				rockSize: rock.rockSize,
				result: donut.isWin? 'success':'fail'
			}

			sendRequest('POST', resultURL, results);

			// переназначаем флаг isWin, чтоб бежал повторно
			if (donut.isWin) donut.isWin = !donut.isWin;
			// переназначаем donut, чтоб бежал повторно (не работает)
			if (isCollide) donut = window.character;

			// переназначаем rock, т.к. он обновился
			rock = window.terrain;
			jumpPosition = 0;
			donut.run();
			start = new Date().getTime();
		}

		if (donut.characterPosition < rock.rockPosition && rock.rockPosition - donut.characterPosition < 130) {
			donut.jump();
			jumpPosition = donut.characterPosition;
		} 
	}), 5);	

	function sendRequest(method, url, body = null) {
		const headers = {
			"Content-Type": "application/json;charset=utf-8"
		}

		fetch(url, {
			method: method,
			body: JSON.stringify(body),
			headers: headers
		})
			.then(response => {
				if (response.ok) return response.json().then(data => console.log(data));

				return response.json().then(error => console.error(error));
			});
	}

}));