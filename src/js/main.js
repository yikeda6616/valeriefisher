var current, slides;

current = 0;
slides = document.querySelectorAll('.slider-img');

if (document.title === 'Valerie Fisher | About') {
	setInterval(fadeSlide, 3000);
}

function fadeSlide() {
	for (var i = 0; i < slides.length; i++) {
		slides[i].style.opacity = 0;
	}
	current = current != slides.length - 1 ? current + 1 : 0;
	slides[current].style.opacity = 1;
}

if (document.title === 'Valerie Fisher | Contact') {
	(function() {
		'use strict';
		window.addEventListener(
			'load',
			function() {
				// Fetch all the forms we want to apply styles to
				var forms = document.getElementsByClassName('needs-validation');
				// Loop over them and prevent submission
				var validation = Array.prototype.filter.call(forms, function(form) {
					form.addEventListener(
						'submit',
						function(event) {
							if (form.checkValidity() === false) {
								event.preventDefault();
								event.stopPropagation();
							}
							form.classList.add('was-validated');
						},
						false
					);
				});
			},
			false
		);
	})();
}

// modal for image panel
if (
	document.title === 'Valerie Fisher | Wedding' ||
	document.title === 'Valerie Fisher | Portrait' ||
	document.title === 'Valerie Fisher | Family'
) {
	const modal = document.getElementById('modal-root');
	const closeModal = document.getElementById('closeModal');

	closeModal.addEventListener('click', () => {
		modal.style.display = 'none';
	});
	modal.addEventListener('click', () => {
		modal.style.display = 'none'; // user can close modal by clicking anywhere
	});

	const arrShowModalLink = document.querySelectorAll('.openModal');
	for (let i = 0; i < arrShowModalLink.length; i++) {
		const currentLink = arrShowModalLink[i];
		currentLink.addEventListener('click', () => {
			modal.style.display = 'flex';

			const modalImage = document.getElementById('modalImage');
			console.log(currentLink.getAttribute('path'));
			modalImage.src = currentLink.getAttribute('path');
			return false;
		});
	}
}
