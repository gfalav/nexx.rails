document.addEventListener("turbolinks:load", function() {
	input = $("#direccion_calle_id")

	var options = {
		getValue: "fullcalle",
		url: function(phrase) {
			phrase = phrase
			return "/search?calle=" + phrase
		},
		categories: [
			{
				listLocation: "calles",
				header: "<strong>Calles</strong>"
			}
		],
		requestDelay: 50,
		list: {
			maxNumberOfElements: 30,
			match: {
				enabled: true
			}
		},
		theme: "blue"
	}

	input.easyAutocomplete(options)
});