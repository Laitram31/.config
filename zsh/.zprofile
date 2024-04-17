curl -m 3 -s "$CAL_PERSO" | grep -v END:VCALENDAR >/tmp/calendar.ics
curl -m 3 -s "$CAL_SCHOOL" | grep -v BEGIN:VCALENDAR >> /tmp/calendar.ics
icstocal /tmp/calendar.ics /tmp/calendar >/dev/null

#[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec sx
