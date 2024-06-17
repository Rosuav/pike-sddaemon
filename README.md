Pike sd-daemon bindings
=======================

TODO:
* sd_listen_fds
* sd_watchdog_enabled

sd_notify and systemd versions
------------------------------

As of 20240617, Debian Stable is shipping a version of systemd too old to
support Type=notify-reload. This means that I can't easily test sd_notify_reload()
and it is thus a stub. Consider this a big ol' TODO.
