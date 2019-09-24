class FacturapdfController < ApplicationController

	before_action :force_pdf, only: [:index]

	def index

		respond_to do |format|
			format.html

			format.pdf do
				pdf = FacturaPdf.new
				send_data pdf.render,
					filename: "export.pdf", 
					type: 'application/pdf',
					disposition: 'inline'
			end
		end
	end

	def force_pdf
		request.format = :pdf
	end

end
