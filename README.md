# System76 Scheduler - GNOME Shell Plugin
This is a standalone extension that integrates `system76-scheduler` without
needing `pop-shell` installed.

The majority of code in this plugin comes from `pop-shell` and is used under
the `GPL-3.0` licence.

## Installation
### Prerequisites
You must install `system76-scheduler` separately. I recommend [this COPR for Fedora and derivatives](https://copr.fedorainfracloud.org/coprs/kylegospo/system76-scheduler/) maintained by Kyle Gospo.

If you previously used the COPR I maintained ([this one](https://copr.fedorainfracloud.org/coprs/mjakeman/system76-scheduler/)), please **uninstall it and change to the one above** as it will no longer receive updates.

Ensure that the `com.system76.Scheduler` service is enabled:

```
sudo systemctl enable --now com.system76.Scheduler.service
```

### Online
Outdated:\
~~You can find the plugin here: https://extensions.gnome.org/extension/4854/system76-scheduler/~~

~~Alternatively, search for  "System76 Scheduler" in [Extension Manager](https://github.com/mjakeman/extension-manager).~~

### Source
You can also install the extension from source. Clone the repository
into your gnome-shell extensions folder as follows:
```bash
git clone https://github.com/mjakeman/s76-scheduler-plugin \
  ~/.local/share/gnome-shell/extensions/s76-scheduler@mattjakeman.com
```



Enable `s76-scheduler-plugin` from your extension manager app.

## Disclaimer
This extension is not affiliated with nor supported by System76. Please
report any issues here first, before engaging with the system76-scheduler
issue tracker.

The canonical repository for `s76-scheduler-plugin` is:
```
https://github.com/mjakeman/s76-scheduler-plugin/
```
