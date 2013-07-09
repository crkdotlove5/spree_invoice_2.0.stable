Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "print_buttons",
                     :insert_top => "[data-hook='toolbar']>ul",
                     :partial => "spree/admin/orders/print_buttons1"
                 )


Deface::Override.new(:virtual_path  => "spree/layouts/admin",
				     :insert_after => "[data-hook='toolbar']",
			   	     :partial => "spree/admin/orders/print_buttons",
		     	     :name => "Invoices")




	# User Show Account buttons
Deface::Override.new(:virtual_path => %q{spree/orders/show},
                     :insert_before => "div#order",
                     :name => "invoice_print",
                    :partial => "spree/admin/orders/print_buttons2")

