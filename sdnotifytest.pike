__async__ void reload() {
	Public.sddaemon.sd_notify_reloading();
	werror("Reloading!\n");
	sleep(2);
	Public.sddaemon.sd_notify_ready();
}
void sighup() {reload();}

int main() {
	werror("Preparing...\n");
	signal(1, sighup);
	sleep(2);
	werror("Ready.\n");
	Public.sddaemon.sd_notify_ready();
	return -1;
}
/*
[Service]
Type=notify-reload
ExecStart=/usr/local/bin/pike /.../.../pike-sddaemon/sdnotifytest

Note that this only works on systemd v253 and newer, which means Debian Trixie but
not Bookworm. On older systemd, Type=notify works and will delay startup, but the
reload signal does not notify.
*/
