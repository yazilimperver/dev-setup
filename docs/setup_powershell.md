# Windows Terminal Kurulum

If the Microsoft Store app is missing or damaged (for example, in Windows 10 LTSC or Windows Server 2022), you can install Windows Terminal in one of the following ways:

* By manually downloading the latest Windows Terminal release from GitHub and installing the MSIX file in Windows; By using the Chocolatey or WinGet package manager.

* For a manual installation of Windows Terminal, you need to download the msixbundle package from the project’s official GitHub https://github.com/microsoft/terminal/releases. Find the latest Terminal release for your version of Windows in the Asset section and download the file.

    * [MSIXBundle](https://github.com/microsoft/terminal/releases/download/v1.21.2701.0/Microsoft.WindowsTerminal_1.21.2701.0_8wekyb3d8bbwe.msixbundle)

    * [msixbundle_Windows10_PreinstallKit](https://github.com/microsoft/terminal/releases/download/v1.21.2701.0/Microsoft.WindowsTerminal_1.21.2701.0_8wekyb3d8bbwe.msixbundle_Windows10_PreinstallKit.zip)

* Next, install the package in Windows by using the Add-AppxPackage cmdlet:
Add-AppxPackage -Path .\Microsoft.WindowsTerminal_1.18.3181.0_8wekyb3d8bbwe.msixbundle

* Check that the package has been successfully installed::
    * Get-AppxPackage *WindowsTerminal* -AllUsers

* The following error may occur when you manually install Windows Terminal on older Windows 10 builds:

    * Add-AppPackage : Deployment failed with HRESULT: 0x80073CF3, Package failed updates, dependency or conflict validation. Windows cannot install package Microsoft.WindowsTerminal_1.18.3181.0_8wekyb3d8bbwe.msixbundle because this package depends on a framework that could not be found. Provide the framework "Microsoft.VCLibs.140.00.UWPDesktop" published by "CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US", with neutral or x64 processor architecture and minimum version 14.0.30035.0, along with this package to install. The frameworks with name Microsoft.VCLibs.140.00.UWPDesktop" currently installed are ..... You must download and install the VCLibs framework before installing the Microsoft.WindowsTerminal package.

* Download the VCLibs package (https://learn.microsoft.com/en-us/troubleshoot/developer/visualstudio/cpp/libraries/c-runtime-packages-desktop-bridge) and install it using the command:
    * Add-AppPackage .\Microsoft.VCLibs.x64.14.00.Desktop.appx