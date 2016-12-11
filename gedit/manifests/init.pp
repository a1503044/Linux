class gedit {

	include chocolatey

	file {"C:/Program Files (x86)/Google":
		ensure => directory,
	}
	
	file {"C:/Program Files (x86)/Google/Chrome":
		ensure => directory,

	}
	
	file {"C:/Program Files (x86)/Google/Chrome/Application":
                ensure => directory,
	}
	file {"C:/Program Files (x86)/Google/Chrome/Application/master_preferences":
		ensure => file,
		content => template("gedit/master_preferences"),
	}
	
	file{"C:/Users/konsta/AppData/Local/Google":
		ensure => directory,
	}

	file {"C:/Users/konsta/AppData/Local/Google/Chrome":
		ensure => directory,
	}
	file {"C:/Users/konsta/AppData/Local/Google/Chrome/User Data":
		ensure => directory,
        }
        file {"C:/Users/konsta/AppData/Local/Google/Chrome/User Data/Default":
                ensure => directory,
        }
	file {"C:/Users/konsta/AppData/Local/Google/Chrome/User Data/Default/Preferences":
                ensure => file,
                content => template("gedit/Preferences"),

        }
	file {"C:/Users/konsta/AppData/Local/Google/Chrome/User Data/Default/Bookmarks":
                ensure => file,
                content => template("gedit/chrome"),
	}
file {"C:/Users/konsta/AppData/Local/Google/Chrome/User Data/Default/Secure Preferences":
                ensure => file,
                content => template("gedit/secure_preferences"),
        }

}
