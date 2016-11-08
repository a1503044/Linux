class testi{
	Package { ensure => "installed", allowcdrom => "true",}
	
	package { "gedit": }
	package { "apache2": }
	package { "ssh": }
	package { "libapache2-mod-php": }

	file {"/var/www/html/index.html":
	content => "hieno on?",
}

	file { '/etc/apache2/mods-enabled/userdir.conf':
	ensure => 'link',
	target => '../mods-available/userdir.conf',
	notify => Service["apache2"],
}

	file { '/etc/apache2/mods-enabled/userdir.load':
	ensure => 'link',
	target => '../mods-available/userdir.load',
	notify => Service["apache2"],
}

	service {"apache2":
	ensure => "true",
	enable => "true",

}
	file { "/etc/skel/public_html":
	ensure => 'directory',
}
}
