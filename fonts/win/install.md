Windows için ilgili fontları yükleyebilmek için aşağıdaki komut kullanılabilir. Tabi öncesinde chocalately kurulmalı.
choco install firacode

Ya da https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip bağlantısından indirilerek kurulur.

Ayrica Windows terminali Color Themes icin asagidaki adres fena degil
https://github.com/atomcorp/themes#how-to-use-the-themes


Windows Terminal Ipuclari
Settings JSON file
If you prefer to configure your Windows Terminal settings using code, rather than the graphic user interface, you can edit the settings.json file.

Select Settings in the Windows Terminal dropdown menu while holding Shift to open the settings.json file in your default text editor. (The default text editor is defined in your Windows settings.)

The path for your Windows Terminal settings.json file may be found in one of the following directories:

Terminal (stable / general release): %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
Terminal (preview release): %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json
Terminal (unpackaged: Scoop, Chocolately, etc): %LOCALAPPDATA%\Microsoft\Windows Terminal\settings.json


Ornek fontlar
https://www.jetbrains.com/lp/mono/ 
choco install jetbrainsmono

https://github.com/be5invis/Iosevka/blob/v17.0.2/doc/PACKAGE-LIST.md

Butun semboller için aşağıdaki fontlar kullanılabilir
https://github.com/romkatv/powerlevel10k#automatic-font-installation
