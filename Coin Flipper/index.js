const button = document.getElementById('flip');
const flipCoin = () => {
	const flipValue = Math.random();
	const coin = document.getElementById('coin')
	if (flipValue >= 0.5) {
		console.log('Heads');
		coin.removeAttribute('class')
		coin.classList.add('heads');
	} else {
		console.log('Tails');
		coin.removeAttribute('class')
		coin.classList.add('tails');
	}
}
button.addEventListener('click', flipCoin);