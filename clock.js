function getTime() {
	// Get current date
	let date = new Date();

	// Set display
	let h = date.getHours(); // 0 - 23
	let m = date.getMinutes(); // 0 - 59

	// Add a leading zero if the number is below 10
	// (so we get 01:00 instead of 1:00)
	h = (h < 10) ? "0" + h : h;
	m = (m < 10) ? "0" + m : m;

	// Generate final time string
	let time = h + " " + m;

	// Update clock
	document.getElementById("clock").textContent = time;
}

window.onload = function () {
	getTime();
};

setInterval(
	function () {
		getTime();
	}, 1000
);
