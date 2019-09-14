document.addEventListener("turbolinks:load", function() {
	input = $("#direccion_calle_id")

	var options = {
		getValue: "nombre",
		url: function(phrase) {
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
		}
	}

	input.easyAutocomplete(options)
});