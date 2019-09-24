class FacturaPdf < Prawn::Document
	

	def initialize
		require 'prawn/qrcode'

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
		nrofactura
		dompostal
		vencimiento
		condfiscal
		documento
		iibb
		perfact
		femision
		fupb
		fproxvcto
		qrcodigo
	end

	def qrcodigo		
		qrcode_content = "http://github.com/jabbrwcky/prawn-qrcode"
		qrcode = RQRCode::QRCode.new(qrcode_content)
		render_qr_code(qrcode)
	end

	def fproxvcto
		bounding_box([408,717], :width=>300, :height=>100) do
			font_size 11
			text "00/00/0000", :inline_format => true
		end		
	end

	def fupb
		bounding_box([308,717], :width=>300, :height=>100) do
			font_size 11
			text "00/00/0000", :inline_format => true
		end		
	end

	def femision
		bounding_box([222,717], :width=>300, :height=>100) do
			font_size 11
			text "00/00/0000", :inline_format => true
		end		
	end

	def perfact
		bounding_box([150,717], :width=>300, :height=>100) do
			font_size 11
			text "00/0000", :inline_format => true
		end		
	end

	def iibb
		bounding_box([402,743], :width=>300, :height=>100) do
			font_size 11
			text "123-18504604", :inline_format => true
		end		
	end

	def documento
		bounding_box([292,743], :width=>300, :height=>100) do
			font_size 11
			text "DNI 18504604", :inline_format => true
		end		
	end

	def condfiscal
		bounding_box([135,743], :width=>300, :height=>100) do
			font_size 11
			text "Consumidor Final", :inline_format => true
		end		
	end

	def vencimiento
		bounding_box([506,783], :width=>300, :height=>100) do
			font_size 11
			text "<b>00/00/0000</b>", :inline_format => true
		end		
	end

	def dompostal
		bounding_box([135,783], :width=>300, :height=>100) do
			font_size 11
			text "CL LOS ZORZALES Nro puerta 620 SN Sin Barrio LAS CHACRAS"
			move_up 3
			text 'JUANA KOSLAY - CP: 5701', :inline_format => true	
		end		
	end

	def nrofactura
		bounding_box([492,818], :width=>100, :height=>100) do
			font_size 10
			text 'Liq Serv Pub "B"(18)', :inline_format => true
			move_up 3
			text 'N° 0000-00000000', :inline_format => true	
		end
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

	def fondo
		image Rails.root.join("app/assets/images/facturaFrente.png"), height: 841
	end
end