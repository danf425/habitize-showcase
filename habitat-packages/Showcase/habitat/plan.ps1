$pkg_name="Showcase"
$pkg_origin="alcon"
$pkg_version="0.1.1"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_shasum="TODO"
$pkg_deps=@("core/dotnet-35sp1-runtime")
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
 Copy-Item -Path C:\Source\Showcase -Destination $pkg_prefix -Recurse -Force
 }