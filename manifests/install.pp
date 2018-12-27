class printer::install(
	Array[String] $package_name_local  = $::printer::package_name_wget,
	String $package_ensure             = $::printer::package_ensure,
){
	$package_name_local.each | $index_local, $value_local | {
        package { "$value_local":
    		        ensure   => installed,
                        provider => dpkg,
                        source   => "/tmp/$value_local",
                }
	}
}

