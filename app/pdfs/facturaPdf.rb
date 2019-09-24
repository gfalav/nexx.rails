class FacturaPdf < Prawn::Document
	def initialize
		super(page_size: "A4", margin: 0)
		font_families.update(
			"OpenSansCond" => {
				:normal => Rails.root.join("app/assets/fonts/OpenSansCondensed-Light.ttf"),
				:italic => Rails.root.join("app/assets/fonts/OpenSansCondensed-LightItalic.ttf"),
				:bold => Rails.root.join("app/assets/fonts/OpenSansCondensed-Bold.ttf")
			},
			"Calibri" => {
				:normal => Rails.root.join("app/assets/fonts/calibri.ttf"),
				:italic => Rails.root.join("app/assets/fonts/calibrii.ttf"),
				:bold => Rails.root.join("app/assets/fonts/calibrib.ttf")
			}
		)
		font "Calibri"
		fondo
		nis
		apell_nombre
	end

	def fondo
		image Rails.root.join("app/assets/images/facturaFrente.png"), height: 841
	end

	def nis
		bounding_box([416,814], :width=>100, :height=>100) do
			font_size 16
			text "<b>1205321</b>", :inline_format => true	
		end		
	end

	def apell_nombre
		bounding_box([135,809], :width=>300, :height=>100) do
			font_size 11
			text "FALAVIGNA, GUSTAVO DAVID"	
		end		
	end

end