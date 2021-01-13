# dwm - Dynamic Window Manager (Carlos' version)

_Extract from the official dwm README_

dwm is an extremely fast, small, and dynamic window manager for X.


## Requirements

In order to build dwm you need the Xlib header files. In Ubuntu systems, you
can find them on the following packages:
- `libx11-dev`
- `libxft-dev`
- `libxinerama-dev`


## Installation

Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

```bash
make clean install
```


## Running dwm

Add the following line to your .xinitrc to start dwm using startx:

```bash
exec dwm
```

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

```bash
DISPLAY=foo.bar:1 exec dwm
```

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

```bash
while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
do
    sleep 1
done &
exec dwm
```


## Configuration

The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.

## Carlos' version

For more information about how I use dwm on my system, check 
[my system repo](https://github.com/CarlosMecha/system/tree/master/wm).

### Patches

This version of dwm has the following patches applied:

* Systray from [this](https://dwm.suckless.org/patches/systray/dwm-systray-20200610-f09418b.diff) patch.

Patches are added to the master branch, and updated from the `official` branch
that tracks main dwm development. Use `update-official.sh` script to automatically
put the latest code from the official repository.

### Keybindings

This section describes custom keybindings not present in the official distribution.

* Mod key is the Super (Windows) key instead of Alt.
* Tag keys are marked as the left top numbers row, as \`, 1, 2, 3 and 4.
* To kill a client, use Mod+q.
* Dmenu but only for `.desktop` files is launched using Mod+d.
* Dmenu for your PATH is launched using Mod+Shift+d.
* Increment and decrement master windows is mapped to `[` and `]`.
* Media keys (increase, decrease volume and mute) are mapped to `pactl set-sink-*` actions.
* Print (and Shift+Print) for capturing a section or the entire screen.
* Power menu (reboot, shut off, hibernate, etc) using Mod+Shift+q.
* Characters menu using Mod+Compose key.

### Other changes

* Removed Firefox from spawning on tag 9.
* Removed Gimp from spawning in floating mode.
* Increase master area to 70%.
* Disabled resize hints.
* Using `gnome-terminal` instead of `st` (for now).
* Limited number of tags to 5 [0..4].

## License

See the license [here](LICENSE).


## Credits

[Suckless](https://suckless.org/) team.
