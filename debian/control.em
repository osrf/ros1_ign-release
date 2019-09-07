Source: @(Package)
Section: misc
Priority: extra
Maintainer: @(Maintainer)
Build-Depends: debhelper (>= @(debhelper_version).0.0), @(', '.join(BuildDepends))
Homepage: @(Homepage)
Standards-Version: 3.9.2

Package: @(Package)
Architecture: any
Depends: ${shlibs:Depends}, ${misc:Depends}, @(', '.join(Depends))
@[if Conflicts]Conflicts: @(', '.join(Conflicts))@\n@[end if]@
@[if Replaces]Replaces: @(', '.join(Replaces))@  (<< 0.7.0-2)
Breaks: @(', '.join(Replaces))@  (<< 0.7.0-2)@[end if]@
Description: @(Description)

Package: @(Package.replace('ros-ign','ros1-ign'))
Depends: @(Package), ${misc:Depends}
Architecture: all
Priority: optional
Section: oldlibs
Description: transitional package
 This is a transitional package. It can safely be removed.
