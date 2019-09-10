$pkg_name="showcase"
$pkg_origin="conal"
$pkg_version="9.0.0.4"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_shasum="TODO"
$pkg_deps=@("core/dotnet-35sp1-runtime")
$pkg_build_deps=@()

function Invoke-Install {
 Copy-Item -Path "C:\Source\Showcase\IBM ShowCase $pkg_version" -Destination $pkg_prefix -Recurse -Force
 Copy-Item -Path "C:\Source\Configuration\" -Destination $pkg_prefix -Recurse -Force
 }