
$pkg_name="Showcase"

$pkg_origin="alcon"

# Required.
# Sets the version of the package
$pkg_version="0.1.0"

$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"

$pkg_license=@("Apache-2.0")

$pkg_shasum="TODO"

$pkg_deps=@()

$pkg_build_deps=@()


# The default implementation is that the software specified in $pkg_source is
# downloaded, checksum-verified, and placed in $HAB_CACHE_SRC_PATH/$pkgfilename,
# which resolves to a path like /hab/cache/src/filename.zip. You should
# override this behavior if you need to change how your binary source is
# downloaded, if you are not downloading any source code at all, or if your are
# cloning from git. If you do clone a repo from git, you must override
# Invoke-Verify with an empty implementation.
function Invoke-Download {
  Invoke-DefaultDownload
}
# The default implementation extracts your zipped source file into
# $HAB_CACHE_SRC_PATH.
function Invoke-Unpack {
  Invoke-DefaultUnpack

}

# function Invoke-Prepare {
#   #Unblock-File -Path $pkg_prefix\..\c:\install\vcredist_x86.exe
#   # New-Item -Path "c:\" -name "install" -ItemType "directory" -Force
#   # New-Item -Path "c:\install" -name "SC" -ItemType "directory" -Force

#   # Copy-Item -Path "C:\Users\hab\Downloads\Showcase\IBM iAccess 7.1\IBM_iAccess_7.1_Prerequisites\vcredist_x64.exe" -Destination "c:\install" -Force
#   # Copy-Item -Path "C:\Users\hab\Downloads\Showcase\IBM iAccess 7.1\IBM_iAccess_7.1_Prerequisites\vcredist_x86.exe" -Destination "c:\install" -Force
#   # Copy-Item -Path "C:\Users\hab\Downloads\Showcase\IBM iAccess 7.1\IBM_iAccess_7.1\" -Destination "c:\install\" -Recurse -Force
#   # Copy-Item -Path "C:\Users\hab\Downloads\Showcase\IBM iAccess 7.1\IBM_iAccess_7.1_SP55797\" -Destination "c:\install\" -Recurse -Force
#   # Copy-Item -Path "C:\Users\hab\Downloads\Showcase\IBM ShoShowcase\IBM iAccess 7.1\IBM_iAccess_7.1\" -Destination "c:\install\" -Recurse -Force
#   # Copy-Item -Path "C:\Users\hab\Downloads\Showcase\IBM iAccess 7.1\IBM_iAccess_7.1_SP55797\" -Destination "c:\install\" -Recurse -Force
#   # Copy-Item -Path "C:\Users\hab\Downloads\Showcase\IBM ShowCase 9.0.0.4.1\IBM ShowCase 9.0.0.4" -Destination "c:\install\SC" -Recurse -Force
  
  
#   # #Unblock-file will disable “Open File Security Warnings”
#   # Unblock-File -Path "c:\install\vcredist_x86.exe"
#   # Unblock-File -Path "c:\install\vcredist_x64.exe"
#   # Unblock-File -Path "c:\install\IBM_iAccess_7.1_SP55797\image64a\setup.exe"
#   # Unblock-File -Path "c:\install\SC\IBM ShowCase 9.0.0.4\Client\setup.exe"
  
#   #Turnoff Windows Installer RDS compatibility
#   #TODO - Registry setting is found here https://getadmx.com/?Category=Windows_10_2016&Policy=Microsoft.Policies.TerminalServer-Server::TS_DISABLE_MSI
#   #No registry setting found on Windows 2016. Turn on RDS aka Terminal server?
#   #trying install with ignoring this step for now.  
# }


function Invoke-Build {
  echo " This is PLAN_CONTEXT"
  dir $PLAN_CONTEXT\..\Showcase\IBM_iAccess_7.1_Prerequisites
  # echo "PKG_PREFIX IS HERE LOOK HERE"
  # echo $pkg_prefix
  # Copy-Item -Path $PLAN_CONTEXT\..\Showcase -Destination $pkg_prefix
  # Start-Process msiexec.exe -Wait -ArgumentList '/I $pkg_prefix\Showcase\IBM_iAccess_7.1\image64a\cwbinstall.msi CWBINSTALLTYPE=Custom /qn'

  # Write-Host "Installing Microsoft 2005 C++ Package"
  # Start-Process "$PLAN_CONTEXT\..\Showcase\IBM_iAccess_7.1_Prerequisites\vcredist_x86.EXE" -ArgumentList "/Q"
  # # Start-Process "$PLAN_CONTEXT\..\Showcase\IBM_iAccess_7.1\IBM_iAccess_7.1_Prerequisites\vcredist_x64.exe" -ArgumentList "/Q"

  # Write-Host "Installing IBM iAccessclient v7.1"
  # Start-Process msiexec.exe -Wait -ArgumentList '/I C:\install\IBM_iAccess_7.1\image64a\cwbinstall.msi CWBINSTALLTYPE=Custom /qn '
  
  # Write-Host "Installing service pack for IBM iAccess Client v7.1"
  # Start-Process "C:\install\IBM_iAccess_7.1_SP55797\image64a\setup.exe" -Wait -NoNewWindow -ArgumentList "/S /V`""

  # Write-Host "Installing Showcase"
  # Start-Process "C:\install\SC\IBM ShowCase 9.0.0.4\Client\setup.exe" -Wait -NoNewWindow -ArgumentList "/s /f1`"C:\install\jmlsetup.iss`""
}

# There is no default implementation of this callback. Typically you will override
# this callback to copy the compiled binaries or libraries in
# $HAB_CACHE_SRC_PATH/$pkg_dirname to $pkg_prefix.
function Invoke-Install {
  Invoke-DefaultInstall
}