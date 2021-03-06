class har6 {
	Package { ensure => "installed", allowcdrom => "true",}
	
	package { "gedit": }
	package { "apache2": }
	package { "ssh": }
	package { "libapache2-mod-php": }
	package { "arduino-core": }
	package { "curl": }
	package { "gedit-plugins": }

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
	file {"/etc/skel/public_html/vieras.php":
	content => "homepage",
}
	user { "peto":
			ensure => "present",
	gid =>"101",
	home => "/home/peto",
	password => "Vad.Qd5",
	password_max_age => "99999",
	password_min_age => "0",
	shell => "/bin/bash",
	uid => "135",	
}
}
