$pkg_name="Showcase"
$pkg_origin="alcon"
$pkg_version="0.1.0"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_shasum="TODO"
$pkg_deps=@()
$pkg_build_deps=@()
function Invoke-Download {
 Invoke-DefaultDownload
}
function Invoke-Prepare {
}
function Invoke-Unpack {
 Invoke-DefaultUnpack
}
function Invoke-Install {
 Copy-Item -Path $PLAN_CONTEXT\..\ShowcaseApp -Destination $pkg_prefix -Recurse -Force
  Write-Host "Installing Microsoft 2005 C++ Package"
 Start-Process "$PLAN_CONTEXT\..\ShowcaseApp\IBM_iAccess_7.1_Prerequisites\vcredist_x86.EXE" -ArgumentList "/Q"
 Start-Process "$PLAN_CONTEXT\..\ShowcaseApp\IBM_iAccess_7.1_Prerequisites\vcredist_x64.EXE" -ArgumentList "/Q"
Write-Host "Installing IBM iAccessclient v7.1"
 Start-Process msiexec.exe -Wait -ArgumentList '/I $PLAN_CONTEXT\..\ShowcaseApp\IBM_iAccess_7.1\image64a\cwbinstall.msi CWBINSTALLTYPE=Custom /qn '
Write-Host "Installing service pack for IBM iAccess Client v7.1"
 Start-Process "$PLAN_CONTEXT\..\ShowcaseApp\IBM_iAccess_7.1_SP55797\image64a\setup.exe" -Wait -NoNewWindow -ArgumentList "/S /V`""
Write-Host "Installing Showcase"
 Start-Process "$PLAN_CONTEXT\..\ShowcaseApp\IBM ShowCase 9.0.0.4\Client\setup.exe" -Wait -NoNewWindow -ArgumentList "/s /f1`"$PLAN_CONTEXT\..\showcasesetup.iss`""
}