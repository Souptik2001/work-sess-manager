# Session manager

![maintenance-status](https://img.shields.io/badge/maintenance-actively--developed-brightgreen.svg)

Light-weight and extendable timer.
(*for arch, for now atleast* :see_no_evil:)

### Want to use?

**Install -**
`yay -S work-sess-manager`

**Start!**
`sess <any_string> <time_in_minutes>`
e.g - `sess work 1` - Timer for 1 minute.

For available drop-ins please check [this section](#drop-ins).

![Progress image](/images/progress.png)

![Done image](/images/done.png)

### Want to extend?

For directly contributing to this project please check [this section](#want-to-contribute).

- Duplicate the `copy-me.sh` drop-in in the `sess_includes/sess_dropins`
 directory.
- Edit it as you want!
- Release it, if you want!
- For a more detailed walkthrough of this please check this article - WIP.

### Want to contribute?

- Firstly if you have extended this tool using the instructions above, then you can already do a contribution right now! :tada:
  - Go ahead and raise a PR containing your drop-in, and that's it! Once merged it will be part of the original AUR package.
  - But please not one thing that, it will be only merged if the package is enough generalized (that is might be used by a major group of people).
- **Core contribution -**
  - Next part is if you want to contribute to the core of this package.
  - Documentation WIP.

### Drop-ins

These are all the drop-ins currently available -
- `copy-me` - This is the boilerplate drop-in which literally does nothing. This was created at the beginning of the project and will remain till the end.
- `change-dns` - This allows to change the DNS to some other profile, while in a session.
  - For using this create a conf file under `~/.work-sess-manager/dns_profiles/` folder.
  - And that's it, when you start the command using `sess work 1`, it will look for `work.conf` under the above mentioned folder and if found will change the DNS. Please check `/etc/systemd/resolved.conf` for example of DNS conf file.