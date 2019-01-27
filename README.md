# K/DE Cyberpunk-Neon
Cyberpunk Neon Themes and icons inspired from K/DA for KDE Plasma, GTK, Telegram, Discord, Tilix, Neovim, Chromium, TexStudio, Slack, GLava Visualizer, Albert Launcher, Kate, Konsole, and Zim.

**Cyberpunk Neon**
![Cyberpunk Neon theme in action](https://i.redd.it/lw08k55mkv921.png)

**K/DE CyberPunk Neon**
![K/DE Cyberpunk Neon theme in action](https://i.imgur.com/iAoGUz9.jpg?1)

**WARNING**: The next themes are modified version of other themes and/or have not been tested enough, so they still contain color inconsistencies. Also, might want to create backups of whatever files are being replaced or edited.

The windows not in focus get darkened so colours for some windows might look a bit darker but that's only because they are not raised.

## Description

* **Wallpaper:** [Highway 4k by AxiomDesign](https://www.deviantart.com/axiomdesign/art/Highway-4k-696620104), for K/DA wallpapers and avatar, see images directory (Screencaps from 4K video).
* **GTK**: [Materia-Dark](https://github.com/nana-4/materia-theme) modified with [oomox](https://github.com/themix-project/oomox)
* **QT**: [Materia-Dark](https://github.com/PapirusDevelopmentTeam/materia-kde) modified with Plasma Color Settings
* **Icons**: [Papirus-Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) modified with [papirus-kolorizer](https://github.com/DarthWound/papirus-kolorizer)
* **Plasma Theme**: Breeze (it autoadjusts itself to fit system theme).
* **Special Plasmoids**: [Media Controller Compact](https://store.kde.org/p/998887/), [Event Calendar](https://store.kde.org/p/998901/)
* **Browser**: Firefox (opensuse build). With Default Theme (it autoadjusts itself to fit system theme), Chromium
* **Terminal**: Tilix, Konsole
* **Dock**: Latte Dock
* **Shell**: zsh with [powerlevel9K](https://github.com/bhilburn/powerlevel9k) modified
* **Telegram**: Custom Theme in dotfiles.
* **Slack**: Custom colorscheme for [slack-black-theme](https://github.com/widget-/slack-black-theme). See link for detailed instructions.
* **Audio Visualizer**: [GLava](https://github.com/wacossusca34/glava)

Color Scheme base on [this palette](https://www.color-hex.com/color-palette/61235). Special thanks to all those who created the themes, pictures and tools i used to make this. Any comments or suggestions are appreciated.

## How to apply

First, clone this repository with git

`https://github.com/UtkarshKunwar/K-DE-Cyberpunk-Neon.git`

And cd into the directory

`cd K-DE-Cyberpunk-Neon/`

### GTK Theme
----------------------

Extract Cyberpunk-Neon-GTK.tar.gz into ~/.themes/

`tar xzf Cyberpunk-Neon-GTK.tar.gz -C ~/.themes/`

An apply the theme via settings (in KDE = Settings -> Appearance - Application Style)

### KDE Color Scheme
----------------------

Since this color scheme is based on [Materia-Dark](https://github.com/PapirusDevelopmentTeam/materia-k) you will have to install and use materia-dark theme to fit with gtk theme.

Next you have to copy CyberpunkNeon.colors to ~/.local/share/color-schemes

`cp CyberpunkNeon.colors ~/.local/share/color-schemes`

Now change the color scheme in Settings -> Appearance -> Color. Don't forget to also change Workspace Theme to Breeze if you want the system to follow the Color Scheme.

### Icons
----------------------

Run papirus-kolorizer.sh script included in this repository **WARNING**: It will replace your existing Papirus icons, if any. Refer to [Papirus Kolorizer repo](https://github.com/DarthWound/papirus-kolorizer) for more info.

```
chmod +x papirus-kolorizer.sh
./papirus-kolorizer.sh
```

Apply the icons (Papirus-Dark) in system settings (KDE = Settings -> Appearance- Icons. Apply icons for GTK applications too in Settings -> Appearance - Application Style))

### Tilix Theme
----------------------

The terminal i'm using is called Tilix. You can import my color scheme copying Cyberpunk-Neon.json into ~/.config/tilix/schemes

`cp Cyberpunk-Neon.json ~/.config/tilix/schemes`

Select it in Settings -> Profile -> Color

### ZSH Theme
----------------------

My powerlevel9k config is a bit simpler than that of Roboron3042's. If you want, you can check his at his repository.

### Zim
----------------------

If you use Zim you can copy my style.conf into ~./config/zim

`cp style.conf ~./config/zim/`

### Telegram
----------------------

Just drop the cyberpunk-neon.tdesktop-theme into the chat and open it.

### Discord
----------------------
Apply CyberpunkNeon.theme.css to [BetterDiscord](https://gist.github.com/ObserverOfTime/d7e60eb9aa7fe837545c8cb77cf31172)

`cp CyberpunkNeon.theme.css ~/.config/BetterDiscord/themes/`

Apply in Discord Settings

### Slack
----------------------

Copy the contents of `Slack/ssb-interop.js` to Slack's `ssb-interop.js` at `/usr/lib/slack/resources/app.asar.unpacked/src/static/`. Need to do it after every update.
**DO NOT OVERWRITE THE ORIGINAL `ssb-interop.js` with this one. JUST APPEND ITS CONTENTS TO THE ORIGINAL ONE.**

### Konsole
----------------------

Copy the configs in `Konsole/` to Konsole's directory.

`cp Konsole/* ~/.local/share/konsole/`

### Kate
----------------------

Just import `cyberpunk.kateschema` from Kate's import option in `Configure Kate -> Appearance`.

### Neovim
--------
#### Editor
You can use my entire `init.vim` in `neovim/` or you can just use the following in your `init.vim` or `.vimrc`. I haven't tested it in non-GUI mode so might break. (Assuming you use [vim-plug](https://github.com/junegunn/vim-plug) as your plugin manager)

```
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes'

set background=dark

colorscheme molokai
hi Normal ctermbg=0 ctermfg=white guifg=white guibg=#000B1E
hi LineNr ctermbg=8 ctermfg=0 guifg=#000B1E guibg=#123A75
hi Visual ctermbg=8 guibg=#123A75
hi ErrorMsg ctermbg=0 guibg=#000B1E
let g:airline_powerline_fonts = 1
let g:airline_theme="cyberpunk"
```

Now if you just use this, it will throw an error that `cyberpunk` airline theme was not found yada-yada.

#### Airline
Copy `neovim/cyberpunk.vim` to `~/.vim/plugged/vim-airline-themes/autoload/airline/themes/`.

`cp neovim/cyberpunk.vim ~/.vim/plugged/vim-airline-themes/autoload/airline/themes/`

### Albert Launcher
----------------------

Copy `KDE CyberPunk Neon.qss` to `~/.local/share/albert/org.albert.frontend.widgetboxmodel/themes/` and select the theme from Albert's settings.

`cp KDE\ CyberPunk\ Neon.qss ~/.local/share/albert/org.albert.frontend.widgetboxmodel/themes/`

### TexStudio
----------------

Just load the `cyberpunk.txsprofile` in TexStudio from `Options -> Load Profile`

### Chrome/Chromium
----------------

Resize the image in `Chrome/` to your monitor size.
`convert Chrome/theme_ntp_background.png -resize WIDTHxHEIGHT Chrome/K-DE\ CyberPunk\ Neon/images/theme_ntp_background.jpeg`

Go to `3 dots -> More Tools -> Extensions` and select `Load Unpacked`. Navigate to the `K-DE CyberPunk Neon/` directory and click `OK`.

### SDDM
-----------------
Install the theme [Chili for Plasma](https://store.kde.org/p/1214121/), and use the wallpaper in `images/`.

### Screen Locking
----------------------
Use the wallpaper in `images/` with `Centered` positioning and `Blurred` background.

### GLava Visualizer
----------------
Copy and replace the files in `glava/` to `~/.config/glava/`

`cp glava/* ~/.config/glava/`

Adjust the geometrical parameters according to your own display. Will need to play around with it a little.
Change `#request setgeometry 0 0 1366 768` in `rc.glsl`.
Change center radius, number of bars, bar width, amplify, and center offset in `radial.glsl`

**Hint**: Try replacing the color in `#DEFINE COLOR` with `#0ABDC9` for cyan bars instead of pink.
See the difference here: [[Pink](https://gfycat.com/adorablelawfulindochinesetiger)] , [[Cyan](https://gfycat.com/astonishinghappyhawk)]
### KDE Splash
-----
Install the [`arc-kde` theme](https://github.com/PapirusDevelopmentTeam/arc-kde) and replace the contents in `~/.local/share/plasma/look-and-feel/com.github.varlesh.arc-dark/contents/` with the ones provided in `Splash/`.

Replaces Arc-KDE splash.

### Plymouth
------
Install the [Persona Bar theme](https://github.com/personaproject/persona_all_plymouth) for plymouth (might have to just download and move the directory to `/usr/share/plymouth/themes` if the install script doesn't work).

Replace the files in `/usr/share/plymouth/themes/persona_bar/` with the ones in `plymouth/` in the repo. (Replaces Persona Bar theme.)

## Acknowledgment
* [Roboron3042](https://github.com/Roboron3042/) for the numerous dotfiles.

## License
Everything in this repository is licensed under the GPL, except papirus-kolorizer script licensed under MIT.
