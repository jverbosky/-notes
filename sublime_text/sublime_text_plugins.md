**Useful Now**
----------------
*To start, open the Sublime Text console so you can view status and installation messages:
- View > Show Console
----------------
[Package Control](https://packagecontrol.io/packages/Package%20Control)
- install this before any others
- Package Control is driven by the Command Palette
	- To open the palette, press ctrl+shift+p (Win, Linux) or cmd+shift+p (OS X)
- All Package Control commands begin with Package Control:, so start by typing Package
- The command palette will now show a number of commands. Most users will be interested in the following:
	- Package Control: Install Package
		- Click on this to show a list of all available packages that are available for install
	- Type a package name to search and click on the result to install the package
----------------

[BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)
- Underlines selected and matching parenthesis, bracket & brace
- Not a huge deal now, but will be very useful later
----------------
[SideBarEnhancements](https://packagecontrol.io/packages/SideBarEnhancements)
- Adds more file options when right-clicking on items in the Folders sidebar
----------------
[TrailingSpaces](https://github.com/SublimeText/TrailingSpaces)
- Highlights trailing (unwanted) spaces at the end of lines
----------------
[Scratch](https://packagecontrol.io/packages/Scratch)
- By default Scratch will save files to ~/Documents/Scratch with the extension .py
- You can change these settings using the following flags in your package settings (see note below):

{
    "save_path": "~/Documents/Scratch",
    "extension" : ".py"
}

Note: Even Windows must use forward slashes for the path!!!

*Personal note: JV Lab*
Win7 x86:
	"save_path": "F:/Documents/Dropbox/MinedMinds/scratch"
Win7 x64: "save_path":
	"save_path": "C:/Users/something/Dropbox/MinedMinds/scratch"
Ubuntu & Mac:
	"save_path": "~/Dropbox/MinedMinds/scratch"
----------------
**Package Settings**

Configure settings for each package via the Sublime Text file menu

Windows/Linux:
- Preferences > Package Settings > |plugin name| > Settings - User
- Adjust config as necessary
- CTRL + S to save the changes
- Close the tab and carry on

Mac:
- Sublime Text > Preferences > Package Settings > |plugin name| > Settings - User
- Adjust config as necessary
- Windows key + S to save the changes
- Close the tab and carry on
----------------
**Test Later**
----------------
[Sublime Linter](https://packagecontrol.io/packages/SublimeLinter)

[SublimeLinter-ruby](https://packagecontrol.io/packages/SublimeLinter-ruby)
----------------
**Someday**
----------------
[CodeFormatter](https://packagecontrol.io/packages/CodeFormatter)
- no support for Ruby yet
----------------
2017-01-21 - jv