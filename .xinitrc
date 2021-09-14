#!/bin/sh

# this file is run when calling startx

# default arch init scripts
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# merge in defaults and keymaps
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

if [ -f $sysresources ]; then
  xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
  xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
  xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
  xmodmap "$usermodmap"
fi

[ -r $HOME/.xprofile ] && . $HOME/.xprofile

# launch the session
export XDG_SESSION_TYPE=x11

session=${1:-bspwm}

case $session in
  bspwm         ) exec bspwm;;
  gnome		) exec gnome-session;;
  i3|i3wm	) exec i3;;
  kde		) exec startkde;;
  xfce|xfce4	) exec startxfce4;;
  # No know session, try to run it as command
  *		) exec $1;;
esac
