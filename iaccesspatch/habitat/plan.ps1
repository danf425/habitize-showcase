$pkg_name="iaccesspatch"
$pkg_origin="conal"
$pkg_version="55797"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_shasum="TODO"
# $pkg_deps=@("conal/iaccess/7.1")
$pkg_build_deps=@()

function Invoke-Install {
 Copy-Item -Path C:\Source\Showcase\IBM_iAccess_7.1_SP55797 -Destination $pkg_prefix -Recurse -Force
 }