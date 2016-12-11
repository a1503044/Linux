class chrome {
   include chocolatey
	
	package {['googlechrome']:
		ensure => 'installed',
		provider => "chocolatey",
	}

}
