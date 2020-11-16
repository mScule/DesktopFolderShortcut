# DesktopFolderShortcut
"shortcut" that opens up a program, and closes the folder where it's located. It's for desktop shortcuts that are inside folders.
 
## How to use:
1. Copy and paste the DesktopFolderShortcut.bat inside a folder where you want the shortcuts. 
2. Create folder called "Shortcuts" inside the folder, and put the real shortcuts (lnk,url,etc) in there. 
3. Make copies of DesktopFolderShortcut.bat for every shortcut. 
4. Open these batch files in desired texteditor, and remove every "::".
5. Give the desired shortcutname after the shortcutName=.
6. Now, when you open this batch file it should open the program and close the folder that it's located in!

## Example:

### Insides of "browsers" folder:
chrome.lnk  

firefox.lnk

edge.lnk

DesktopFolderShortcut.bat  

### "browsers" folder | after creating folder "Shortcuts":
Shortcuts(folder)

chrome.lnk

firefox.lnk

edge.lnk

DesktopFolderShortcut.bat

### "browsers" folder | after moving shortcuts to "Shortcuts" folder:
Shortcuts(folder)

DesktopFolderShortcut.bat

### "browsers" folder | copying DesktopFolderShortcut.bat:
Shortcuts(folder)

DesktopFolderShortcut.bat - Copy (2).bat

DesktopFolderShortcut.bat - Copy.bat

DesktopFolderShortcut.bat

### "browsers" folder | renaming DesktopFolderShortcuts:
Shortcuts(folder)

chrome.bat

firefox.bat

edge.bat

### "chrome.bat" | after removing comments and giving right lnk:
```bat
ECHO OFF
SET shortcutName=chrome.lnk
SET folderDestination=%cd%
START %folderDestination%\Shortcuts\%shortcutName%
TASKKILL /FI "WINDOWTITLE eq %folderDestination%"
```

### "firefox.bat" | after removing comments and giving right lnk:
```bat
ECHO OFF
SET shortcutName=firefox.lnk
SET folderDestination=%cd%
START %folderDestination%\Shortcuts\%shortcutName%
TASKKILL /FI "WINDOWTITLE eq %folderDestination%"
```

### "edge.bat" | after removing comments and giving right lnk:
```bat
ECHO OFF
SET shortcutName=edge.lnk
SET folderDestination=%cd%
START %folderDestination%\Shortcuts\%shortcutName%
TASKKILL /FI "WINDOWTITLE eq %folderDestination%"
```

## Last words:
Yep I know, this is very small and perhaps messy, and possibly unstable batch script (use at your own risk btw) but I find it useful, so I thought sharing it :)
