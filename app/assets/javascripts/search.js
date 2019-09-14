document.addEventListener("turbolinks:load", function() {
	input = $("#autocomplete")

	var options = {
		minCharNumber: 2,
		getValue: "fullcalle",
		url: function(phrase) {
			return "/search?calle=" + phrase
		},
		list: {
			maxNumberOfElements: 20,
			match: {
				enabled: true
			},
			onChooseEvent: function() {
				var valor = $("#autocomplete").getSelectedItemData().id;
				$("#direccion_calle_id").val(valor).trigger("change");
			}
		},
		theme: "blue",
		requestDelay: 500
	}

	input.easyAutocomplete(options)
});