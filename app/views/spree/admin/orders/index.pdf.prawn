require 'prawn'

require 'prawn/layout'

#render "print"
	@orders.each do |orders |

		pdf.fill_color "585858"
	    pdf.font "Times-Roman"
		pdf.font_size 12
	pdf.text "Invoice", :size => 30,:style => :bold, :align => :right
						

#Logo company
		pdf.image "#{Rails.root.to_s}/public/assets/#{Spree::PrintInvoice::Config[:print_invoice_logo_path]}",:align => :left
			pdf.move_down 20
		pdf.stroke_horizontal_rule
		pdf.move_down 20

#Company Name
		pdf.text "Company Name : #{}",:size => 30, :style => :bold
		pdf.text "Company Slogan"


#Company Details

	    y_position = pdf.cursor - 10
	pdf.bounding_box([0, y_position], :width => 200, :height => 150) do
		pdf.transparent(0.0) { pdf.stroke_bounds }
		pdf.text "Company Street"
		pdf.text "Company Address Number"
		pdf.text "Company Zip"
		pdf.text "Company Phone"
		pdf.text "Company Website"
		pdf.text "Company VATNUMBER"
		pdf.fill_color "000000"
	end

#Company Information
	pdf.bounding_box([300, y_position], :width => 200, :height => 110) do
		pdf.transparent(0.0) { pdf.stroke_bounds } 
		pdf.text "Invoice Date,Invoice Number ", :align => :right
		pdf.text "Transction Date ", :align => :right
		pdf.text "Delivery Date / Delivery Number", :align => :right
		pdf.text "Account Number", :align => :right
		pdf.text "company ban",:align => :right
	end

# Address Information
#Customer Address 
	y_position = pdf.cursor - 0
	pdf.bounding_box([0, y_position], :width => 200, :height => 150) do
	pdf.transparent(0.0) { pdf.stroke_bounds }
	   pdf.text "To:",:size => 10, :style => :bold,:align => :left
	pdf.text "Company Street"
						    pdf.text "Company Address Number"
						    pdf.text "Company Zip"
						    pdf.text "Company Phone"
						    pdf.text "Company Website"
						    pdf.text "Company VATNUMBER"
						    pdf.fill_color "000000"
							
						end

#Company Information

	pdf.bounding_box([240, y_position], :width => 180, :height => 100) do
		pdf.transparent(0.0) { pdf.stroke_bounds } 
		pdf.text "SHIP To:",:size => 12, :style => :bold,:align => :center
		pdf.text "Invoice Number : #{(orders.number.to_s)}", :align => :right ,:style=> :bold
		pdf.text "Transction Date :#{orders.created_at}", :align => :right
		pdf.text "Delivery Date / Delivery Number : ", :align => :right
		pdf.text "Account Number", :align => :right
		pdf.text "company ban",:align => :right
	end



# Information Comments  Ends Here.
		pdf.stroke_horizontal_rule
		pdf.move_down 3
pdf.text "COMMENTS OR SPECIAL INSTRUCTIONS",:style => :bold
pdf.stroke_horizontal_rule
pdf.move_down 5
#Table for Order Description
pdf.table([ ["Quantity", "Description", "Unit Price","Base Price","VAT%","VAT","Total"],
			["","","","","","",""],
									["","","","","","","
								SUM"],
									["","","","","","","SHOPING COST OPTIONAL"],  
									["","","","","","","DISCOUNT OPTIONAL"],
									["","","","","","","SUM -ALL ITEM UNDER"]])



				



										

	pdf.stroke_horizontal_rule
	pdf.move_down 100									
	pdf.text "Payment is due to within 30 days after invoice date.If you have any questions concering this invoice,contact <{CompanyContact,mandatory},><{Company Telephone} or e-< <Company email>>"
	pdf.stroke_horizontal_rule
   pdf.start_new_page


end
							    
							  