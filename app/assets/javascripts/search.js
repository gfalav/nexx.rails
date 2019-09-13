document.addEventListener("turbolinks:load", function() {
	$("#direccion_calle_id") = $("[data-behavior='autocomplete']")

	var options = {
		getValue: "nombre",
		url: function(phrase) {
			return "search.json?calle=" + phrase
		},
		list: {
			onChooseEvent: function() {
				var url = $("#direccion_calle_id").getSelectedItemData().url
				console.log(url)
			}
		}
	}

	$("#direccion_calle_id").easyAutocomplete(options)
	
});