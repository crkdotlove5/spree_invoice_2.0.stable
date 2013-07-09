
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

###################
pdf.font "Helvetica"

#Company Information

pdf.transparent(0.0) { pdf.stroke_bounds } 
pdf.text "Invoice Date,Invoice Number "
pdf.text "Transction Date "
pdf.text "Delivery Date / Delivery Number"
pdf.text "Account Number"
pdf.text "company ban"


# Address Information
#Customer Address 

pdf.transparent(0.0) { pdf.stroke_bounds }
pdf.text "To:"
pdf.text "Company Street"
pdf.text "Company Address Number"
pdf.text "Company Zip"
pdf.text "Company Phone"
pdf.text "Company Website"
pdf.text "Company VATNUMBER"
pdf.fill_color "000000"



#Company Information
pdf.transparent(0.0) { pdf.stroke_bounds } 
pdf.text "SHIP To:"
pdf.text "Invoice Number : #{(@order.number.to_s)}"		
pdf.text "Transction Date :#{@order.created_at}"
pdf.text "Delivery Date / Delivery Number : "
pdf.text "Account Number"
pdf.text "company ban"



# Information Comments  Ends Here.
pdf.stroke_horizontal_rule
pdf.move_down 3
pdf.text "COMMENTS OR SPECIAL INSTRUCTIONS"
pdf.stroke_horizontal_rule
pdf.move_down 5
#Table for Order Description
