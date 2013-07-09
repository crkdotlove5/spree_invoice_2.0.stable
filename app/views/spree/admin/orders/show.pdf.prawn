	       
require 'prawn'
require 'prawn/layout'	       

#Logo company
pdf.image "#{Rails.root.to_s}/public/assets/#{Spree::PrintInvoice::Config[:print_invoice_logo_path]}"
pdf.move_down 20
pdf.stroke_horizontal_rule
pdf.move_down 20

#Company Name
pdf.text "Company Name : #{}"
pdf.text "Company Slogan"

#Company Details


	pdf.text "Company Street"
	pdf.text "Company Address Number"
	pdf.text "Company Zip"
	pdf.text "Company Phone"
	pdf.text "Company Website"
	pdf.text "Company VATNUMBER"
	pdf.fill_color "000000"



pdf.font "Helvetica"


pdf.text "INVOICE"
pdf.move_down 10

pdf.stroke_horizontal_rule
pdf.move_down 4
pdf.text "Invoice Number"
        pdf.move_down 2
pdf.text @order.number.to_s
pdf.stroke_horizontal_rule
pdf.move_down 10

pdf.text @order.item_total.to_s
pdf.move_down 5
pdf.text @order.adjustment_total.to_s
	pdf.move_down 5

pdf.text @order.total.to_s
pdf.text @order.state
pdf.move_down 5

pdf.text @order.email.to_s	
pdf.text @order.user_id.to_s
pdf.text @order.completed_at.to_s
pdf.text @order.bill_address_id.to_s
pdf.text @order.ship_address_id.to_s
pdf.text @order.shipment_state.to_s
pdf.text @order.payment_state.to_s
pdf.text @order.outstanding_balance.to_s

# Address Stuff


pdf.text  @order.email 



####################
	       pdf.font "Helvetica"


	       pdf.text "INVOICE",:size => 40, :style => :bold
	       pdf.move_down 10

			pdf.stroke_horizontal_rule
	        pdf.move_down 4
            pdf.text "Invoice Number"
                    pdf.move_down 2
	        pdf.text @order.number.to_s,:size => 30, :style => :bold

			pdf.stroke_horizontal_rule
	        pdf.move_down 10

			pdf.text @order.item_total.to_s
			pdf.move_down 5
		    pdf.text @order.adjustment_total.to_s
	   		pdf.move_down 5

			pdf.text @order.total.to_s
		    pdf.text @order.state
			pdf.move_down 5

			pdf.text @order.email.to_s	
		    pdf.text @order.user_id.to_s
			pdf.text @order.completed_at.to_s
		    pdf.text @order.bill_address_id.to_s
			pdf.text @order.ship_address_id.to_s
		    pdf.text @order.shipment_state.to_s
		    pdf.text @order.payment_state.to_s
			pdf.text @order.outstanding_balance.to_s

			# Address Stuff

 
           pdf.text  @order.email 


