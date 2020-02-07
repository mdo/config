# [Config](https://github.com/tyler-vs/config)

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

Hello world!

## Contents

<!-- MarkdownTOC -->

1. Prep OS X
2. Prep Terminal.app
  - MDO configs
  - Udacity configs
  - Brewfile
3. Secure GitHub access
4. GitHub development setup
5. Setup Ruby
6. Additional dependencies
7. Setup Sublime Text 3
  - Enable Command Line Tool `subl` for Sublime Text
  - Use Sublime as the default editor for git
  - Setup Package Control & Packages
    - User Preferences
8. Customize things
  - How to Enable Tab Key for Navigating Mac Dialog Boxes & Buttons
9. Security
<!-- /MarkdownTOC -->



| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

**Be sure to open Xcode and agree to the terms of use.**

### 2. Prep Terminal.app

Both overlap in some functionalities, the more concise may be the Udacity configs.

#### MDO configs

- Load [`.bash_profile`](/.bash_profile), note that 
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`
- Load up the Ocean theme from <https://github.com/mdo/ocean-terminal>
- Add tab completions for git commands in terminal.app <https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion>

#### Udacity configs

Can also follow along setup for Udacity's terminal configuration used in the learning version control course. See the [udacity-terminal-config directory](./udacity-terminal-config)

- Load [`.bash_profile`](./udacity-terminal-config/bash_profile), append dot to file name.
- Load [`.git-completions.bash`](./udacity-terminal-config/.git-completions.bash)
- Load [`.git-prompt`](./udacity-terminal-config/.git-prompt)

### 3. Secure GitHub access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to authorize your GitHub account when 2FA is enabled.

### 4. GitHub development setup

*Go to [6. Additional dependencies](6.-additional-dependencies) section below before reading this section.*

Download git via Homebrew `brew install git`, or see [git docs](https://git-scm.com/book/en/v1/Getting-Started-Installing-Git) for alternative installation guides.


### 5. Setup Ruby

- Install rbenv via Homebrew: `brew install rbenv`.
- Download a version of Ruby via rbenv (e.g., `rbenv install 2.2.3`). See <https://gorails.com/setup/osx/10.11-el-capitan>.
- Make it the global version of Ruby: `rbenv global 2.2.3`.

*Installing and managing Ruby with rbenv allows us to specify versions of Ruby on a per-project basis. It also means we can avoid running sudo commands for installing gems and more as it's not affecting OS X's system Ruby.*

*Having trouble with nokogiri? See <https://stackoverflow.com/a/41491487>.*

### 6. Additional dependencies

- Install [Homebrew](https://brew.sh/), `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`.
  - See [notes](https://gist.github.com/indiesquidge/ec010eca3ffa254788c2) on using the `brewup` command added to the [.bashprofile](./.base_profile).
  - [Article](https://www.safaribooksonline.com/blog/2014/03/18/keeping-homebrew-date/) on keeping Homebrew up to date.
  - [Aricle on using Homebrew](https://hackercodex.com/guide/mac-development-configuration/).
- Install node via Homebrew: `brew install node`.
- Install Sass, Jekyll, and Rouge: `gem install bundler sass jekyll rouge`.
- [Homebrew Commands Cheatsheet](https://devhints.io/homebrew).


### 7. Setup Sublime Text 3

#### Enable Command Line Tool `subl` for Sublime Text

> Sublime Text includes a command line tool, subl, to work with files on the command line. This can be used to open files and projects in Sublime Text, as well working as an EDITOR for unix tools, such as git and subversion.
> from [ST3 Docs](https://www.sublimetext.com/docs/3/osx_command_line.html)

Enable `subl` terminal commands, by entering in the terminal:

```
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl;
```

#### Install Sublime Merge

Add support for `smerge` command in `.bash_profile`

```
PATH="/Applications/Sublime Merge.app/Contents/SharedSupport/bin:{$PATH}"
export PATH

```

#### Use Sublime as the default editor for git

Allows the use of ST3 to pop up when composing git commit messages, the advantage is that ST3 has a spell checker.

`git config --global core.editor "subl -n -w"`

- <https://help.github.com/articles/associating-text-editors-with-git/>


#### Setup Package Control & Packages

Can CMD + Shift + P > Install Package > type in the below plugins

- **[Sublime Tutor](https://packagecontrol.io/packages/Sublime%20Tutor)**
- [BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)
- [Emmet](https://packagecontrol.io/packages/Emmet)
- [GitGutter](https://packagecontrol.io/packages/GitGutter)
- [Sublime Linter](https://packagecontrol.io/packages/SublimeLinter) (requires npm)
- [DocBlockr](https://packagecontrol.io/packages/DocBlockr)
- [TerminalView](https://packagecontrol.io/packages/TerminalView)
- [SCSS](https://packagecontrol.io/packages/SCSS)
- [Sass](https://packagecontrol.io/packages/Sass)
- [Liquid](https://packagecontrol.io/packages/Liquid)
- [Markdown Extended](https://packagecontrol.io/packages/Markdown%20Extended)
- [AdvanceNewFile](https://packagecontrol.io/packages/AdvancedNewFile)
- [Markdown Editing](https://packagecontrol.io/packages/MarkdownEditing)
- [EditorConfig](https://packagecontrol.io/packages/EditorConfig)
- [SideBarEnhancements](https://packagecontrol.io/packages/SideBarEnhancements)
- [MarkdownTOC](https://packagecontrol.io/packages/MarkdownTOC)
- [Js Prettier](https://packagecontrol.io/packages/JsPrettier) (requires [npm prettier](https://prettier.io/docs/en/install.html))
- [Liquid](https://packagecontrol.io/packages/Liquid)
- Babel
- CSV
- Compare Side-By-Side
- HTML Beautify
- InsertDate
- JavaScript Completions
- jQuery
- Pretty JSON
- Solarized Color Scheme
- Terminal
- View In Browser

##### User Preferences

```
{
	"added_words":
	[
		"datatypes",
		"workflow",
		"plugin",
		"viewport",
		"Udacity",
		"Shopify"
	],
	"atomic_save": "false",
	"auto_complete_commit_on_tab": true,
	"auto_complete_with_fields": true,
	"binary_file_patterns":
	[
		"node_modules/*",
		"bower_components/*"
	],
	"bold_folder_labels": true,
	"color_scheme": "Packages/User/Color Highlighter/themes/Solarized (light).tmTheme",
	"ensure_newline_at_eof_on_save": true,
	"fade_fold_buttons": false,
	"folder_exclude_patterns":
	[
		".svn",
		".git",
		".hg",
		"CVS",
		".sass-cache"
	],
	"font_options":
	[
		"gray_antialias"
	],
	"font_size": 12,
	"highlight_line": true,
	"highlight_modified_tabs": true,
	"ignored_packages":
	[
		"Markdown",
		"Vintage"
	],
	"indent_guide_options":
	[
		"draw_normal",
		"draw_active"
	],
	"line_padding_bottom": 1,
	"line_padding_top": 1,
	"rulers":
	[
		80,
		100
	],
	"show_encoding": true,
	"show_line_endings": true,
	"tab_size": 2,
	"theme": "Adaptive.sublime-theme",
	"translate_tabs_to_spaces": true,
	"trim_trailing_white_space_on_save": true,
	"word_wrap": true,
	"wrap_width": 80
}
{
	"added_words":
	[
		"datatypes",
		"workflow",
		"plugin",
		"viewport",
		"Udacity",
		"Shopify"
	],
	"atomic_save": "false",
	"auto_complete_commit_on_tab": true,
	"auto_complete_with_fields": true,
	"binary_file_patterns":
	[
		"node_modules/*",
		"bower_components/*"
	],
	"bold_folder_labels": true,
	"color_scheme": "Packages/User/Color Highlighter/themes/Solarized (light).tmTheme",
	"ensure_newline_at_eof_on_save": true,
	"fade_fold_buttons": false,
	"folder_exclude_patterns":
	[
		".svn",
		".git",
		".hg",
		"CVS",
		".sass-cache"
	],
	"font_options":
	[
		"gray_antialias"
	],
	"font_size": 12,
	"highlight_line": true,
	"highlight_modified_tabs": true,
	"ignored_packages":
	[
		"Markdown",
		"Vintage"
	],
	"indent_guide_options":
	[
		"draw_normal",
		"draw_active"
	],
	"line_padding_bottom": 1,
	"line_padding_top": 1,
	"rulers":
	[
		80,
		100
	],
	"show_encoding": true,
	"show_line_endings": true,
	"tab_size": 2,
	"theme": "Adaptive.sublime-theme",
	"translate_tabs_to_spaces": true,
	"trim_trailing_white_space_on_save": true,
	"word_wrap": true,
	"wrap_width": 80
}

```

### 8. Customize things

- Disable LCD font smoothing
- Configure Security & Privacy settings
  - [x] Require password immediately
  - [x] Show a message when screen is locked > Set Lock Message > Add Name & Phone Number
- Hide desktop icons with `defaults write com.apple.finder CreateDesktop false; killall Finder`
- Set sidebar icons to Small
- Type faster by going to Keyboard and moving `Key Repeat` all the way to `Fast` and `Delay until repeat` all the way to `Short`.
- Bump up the contrast, go to Accessibility and check `Reduce Motion`, `Increase Contrast`.
- Get 24-Hour time by going to Language and Region and checking the `Time Format` check box.
- [Add `CMD + SHIFT + .` shortcut key to show/hide hidden files in Finder.app](https://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/)
- Add Source Code Pro 
  + Download: https://github.com/adobe-fonts/source-code-pro
  + Setup: `brew tap caskroom/fonts && brew cask install font-source-code-pro`
  + Alternatively, download and [install](https://support.apple.com/en-us/HT201749)

#### How to Enable Tab Key for Navigating Mac Dialog Boxes & Buttons

Original article by [osxdaily](http://osxdaily.com) found [here](http://osxdaily.com/2010/02/26/use-the-tab-key-to-switch-between-dialog-buttons-in-mac-os-x/).

Quick guide:

01. Launch System Preferences from the  Apple menu
02. Click on the “Keyboards” preference panel
03. Select the “Shortcuts” tab (sometimes called “Keyboard Shortcuts” in older versions of OS X)
04. Look near the bottom of the window for a mention of “Full Keyboard Access: In windows and dialogs, press Tab to move keyboard focus between:” and click to select the radio button next to “All controls”*
05. Close System Preferences


### 9. Security

- [macOS Security and Privacy-Guide](https://github.com/drduh/macOS-Security-and-Privacy-Guide)
- [EFF Privacy Guidelines available](https://www.eff.org/deeplinks/2015/11/guide-google-account-privacy-settings-students), 
  - [EEF Guide #2](https://ssd.eff.org/)
  - [EFF Website](https://www.eff.org/)
  - [Badger Google Chrome Extension](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp/related?hl=en-US)
  - [HTTPS Everywhere Google Chrome Extension](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp/related?hl=en)
  - [Activate Stealth Mode on macos](https://support.apple.com/kb/PH25606?locale=en_US) for macos.
- [Remove Adobe Flash from macos](https://helpx.adobe.com/flash-player/kb/uninstall-flash-player-mac-os.html)

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**

## Supplementary Material

- <http://sourabhbajaj.com/mac-setup/index.html>
- <https://hackercodex.com/guide/mac-development-configuration/>
- <http://robdodson.me/sublime-text-2-tips-and-shortcuts/>
- <https://packagecontrol.io/>
- <https://www.sublimetext.com/docs/3/>

## Works on my machine

Yup, it does. Hopefully it does on yours as well, but please don't hate me if it doesn't.

<3
