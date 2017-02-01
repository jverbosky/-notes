**Useful Now**
<hr>
To start, open the Sublime Text console so you can view status and installation messages:
>View > Show Console  
  
<hr>  
[Package Control](https://packagecontrol.io/packages/Package%20Control)  
- install this before any others  
- Package Control is driven by the Command Palette  
&nbsp;&nbsp;&nbsp;&nbsp;- To open the palette, press CTRL+Shift+p (Win, Linux) or CMD+Shift+p (OS X)  

All Package Control commands begin with *Package Control:*, so start by typing "Package"  
- The command palette will now show a number of commands.

Most users will be interested in the following:  
- Package Control: Install Package  
&nbsp;&nbsp;&nbsp;&nbsp;- Click on this to show a list of all available packages that are available for install  
&nbsp;&nbsp;&nbsp;&nbsp;- Type a package name to search and click on the result to install the package
<hr>
[BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)  
- Underlines selected and matching parenthesis, bracket & brace  
- Not a huge deal now, but will be very useful later
<hr>
[SideBarEnhancements](https://packagecontrol.io/packages/SideBarEnhancements)  
- Adds more file options when right-clicking on items in the Folders sidebar  
<hr>
[TrailingSpaces](https://github.com/SublimeText/TrailingSpaces)  
- Highlights trailing (unwanted) spaces at the end of lines  
<hr>
[Scratch](https://packagecontrol.io/packages/Scratch)  
- By default Scratch will save files to ~/Documents/Scratch with the extension .py  
- You can change these settings using the following flags in your package settings (see note below):  

{  
&nbsp;&nbsp;&nbsp;&nbsp;"save_path": "~/Documents/Scratch",  
&nbsp;&nbsp;&nbsp;&nbsp;"extension" : ".py"  
}

**Note: Even Windows must use forward slashes for the path!!!**

>**Personal note: JV Lab**  
Win7 x86:  
&nbsp;&nbsp;&nbsp;&nbsp;"save_path": "F:/Documents/Dropbox/MinedMinds/scratch"  
Win7 x64: "save_path":  
&nbsp;&nbsp;&nbsp;&nbsp;"save_path": "C:/Users/something/Dropbox/MinedMinds/scratch"  
Ubuntu & Mac:  
&nbsp;&nbsp;&nbsp;&nbsp;"save_path": "~/Dropbox/MinedMinds/scratch"  
  
<hr>  
**Package Settings**

Configure settings for each package via the Sublime Text file menu

*Windows/Linux:*  
&nbsp;&nbsp;&nbsp;&nbsp;- Preferences > Package Settings > |plugin name| > Settings - User  
&nbsp;&nbsp;&nbsp;&nbsp;- Adjust config as necessary  
&nbsp;&nbsp;&nbsp;&nbsp;- CTRL + S to save the changes  
&nbsp;&nbsp;&nbsp;&nbsp;- Close the tab and carry on  

*Mac:*  
&nbsp;&nbsp;&nbsp;&nbsp;- Sublime Text > Preferences > Package Settings > |plugin name| > Settings - User  
&nbsp;&nbsp;&nbsp;&nbsp;- Adjust config as necessary  
&nbsp;&nbsp;&nbsp;&nbsp;- Windows key + S to save the changes  
&nbsp;&nbsp;&nbsp;&nbsp;- Close the tab and carry on  
<hr>
**Test Later**
<hr>
[Sublime Linter](https://packagecontrol.io/packages/SublimeLinter)

[SublimeLinter-ruby](https://packagecontrol.io/packages/SublimeLinter-ruby)
<hr>
**Someday**
<hr>
[CodeFormatter](https://packagecontrol.io/packages/CodeFormatter)
- no support for Ruby yet
<hr>
2017-01-21 - jv