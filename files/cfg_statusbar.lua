mod_statusbar.create{
	screen=0,
	pos='bl',
	fullsize=true,
	systray=true,
	template="[ %date ] %filler%systray",
}

mod_statusbar.launch_statusd{
	date={date_format="%a %Y-%m-%d %H:%M"},
	load={},
	mail={},
}
