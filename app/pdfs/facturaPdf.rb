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
		sumelectrico
		medidor
		graphbar
		lecturas
	end

	def graphbar
			series = []
	 		series << Prawn::Graph::Series.new( [11,2,3,4,5,6,7,8,9,10,11,12,13],  title: "Periodos", type: :bar)
			xaxis_labels = ['11','12','13','14','15','16','17','18','19','20','21','22','23','24','22','23','24']
			graph series, width: 240, height: 100, title: "Ultimos Consumos", at: [12,370], xaxis_labels: xaxis_labels
	end

	def lecturas
		bounding_box([17,543], :width=>216, :height=>150) do
			font_size 7
			data = [ 
				["<b>Tipo de Consumo</b>", "<b>Lect Ant</b>", "<b>Lect Act</b>", "<b>Cte</b>", "<b>Consumo</b>"],
				["Activa", "00000000", "00000000", "12000", "00000000"],
				["Activa", "00000000", "00000000", "12000", "0000"],
				["Activa", "00000000", "00000000", "12000", "00000000"],
				["Activa", "00000000", "00000000", "12000", "00000000"],
				["Activa", "00000000", "00000000", "12000", "11111111"]
				]
			table data do
				  self.column_widths = [66,40,40,30,40]
				  self.row_colors = ["F0F0F0", "FFFFFF"]
				  self.cell_style = { :border_lines => [:solid, :solid, :solid, :solid], :border_widths => [1,1,1,1], :inline_format => true, :height => 10, :padding => [0,3,0,3] }
				  column(1..4).align = :right
				  row(0).align = :center
			end
		end		
	end

	def medidor
		bounding_box([18,582], :width=>220, :height=>100) do
			font_size 10
			text "<b>Medidor:</b> 505062687 AMPY", :inline_format => true
			text "<b>Periodo de Consumo:</b> 00/00/0000 al 00/00/0000", :inline_format => true
			text "Precinto Transparente 486046", :inline_format => true
		end		
	end

	def sumelectrico
		bounding_box([18,672], :width=>220, :height=>100) do
			font_size 10
			text "<b>Suministro Eléctrico</b>", :inline_format => true
			text "Identificación: 1205321", :inline_format => true
			text "Referencia de Pago: 0.1205321.01-00/00/0000", :inline_format => true
			text "Domicilio: Cl LOS ZORZALES Nro Puerta 620 SN Sin Barrio LAS CHACRAS", :inline_format => true
			text "Acceso: ", :inline_format => true
			text "Tarifa: 1-R - Pot Cont (kW): 2", :inline_format => true
		end		
	end

	def qrcodigo		
		qrcode_content = "https://www.google.com.ar/maps/@-33.266919,-66.236386,20z"
		qrcode = RQRCode::QRCode.new(qrcode_content)
		svggr = qrcode.as_svg(
		  offset: 0,
		  color: '000',
		  shape_rendering: 'crispEdges',
		  module_size: 1.6,
		  standalone: true
		)
		bounding_box([500,769], :width=>300, :height=>100) do
			svg svggr
		end	
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