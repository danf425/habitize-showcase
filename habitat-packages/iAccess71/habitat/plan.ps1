$pkg_name="iAccess71"
$pkg_origin="alcon-poc"
$pkg_version="7.1"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_shasum="TODO"
$pkg_deps=@()
$pkg_build_deps=@()

function Invoke-Install {
 Copy-Item -Path C:\Source\Showcase\IBM_iAccess_7* -Destination $pkg_prefix -Recurse -Force
 }