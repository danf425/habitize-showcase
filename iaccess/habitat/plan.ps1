$pkg_name="iaccess"
$pkg_origin="conal"
$pkg_version="7.1"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_shasum="TODO"
$pkg_deps=@()
$pkg_build_deps=@()

function Invoke-Install {
  Copy-Item -Path C:\Source\Showcase\IBM_iAccess_7.1 -Destination $pkg_prefix -Recurse -Force
  Copy-Item -Path C:\Source\Showcase\IBM_iAccess_7.1_Prerequisites -Destination $pkg_prefix -Recurse -Force
 }