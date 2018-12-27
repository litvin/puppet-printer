class printer::pdf {
     package { "printer-driver-cups-pdf":
                ensure   => present 
	     }
	
#      exec   { '$pdf_name':
#		command => "lpadmin -E -d '${::print::pdf_name}' ",
#		unless  => "lpstat -d | grep -w '${::print::pdf_name}'",
#		path    => ['/usr/sbin/', '/usr/bin/', '/sbin/', '/bin/'],
#             }
}
