document.addEventListener("turbolinks:load", function() {
	input = $("#autocomplete")

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
		requestDelay: 500,
		list: {
			maxNumberOfElements: 30,
			match: {
				enabled: true
			},
			onChooseEvent: function() {
				var valor = $("#autocomplete").getSelectedItemData().id;
				$("#direccion_calle_id").val(valor).trigger("change");
			}
		},
		theme: "blue"
	}

	input.easyAutocomplete(options)
});