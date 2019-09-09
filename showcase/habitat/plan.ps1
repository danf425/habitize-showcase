$pkg_name="showcase"
$pkg_origin="alcon-poc"
$pkg_version="9.0.0.3"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_shasum="TODO"
$pkg_deps=@()
$pkg_build_deps=@()

function Invoke-Install {
 Copy-Item -Path 'C:\Source\Showcase\IBM ShowCase $pkg_version' -Destination $pkg_prefix -Recurse -Force
 }