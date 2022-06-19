# optibuntu
Slight optimizations to ubuntu-based distros

This set of simple shell-scripts is capable of the following:
-remove snaps entirely (and make them not come back)
-integrate flatpak into the Gnome-Software-Store
-install a few useful programs, which don't have apt-packages on ubuntu from source FIREFOX, signal, brave, element)

and further through customizable lists:
-add flatpaks
-add apts
-remove useless apt-Packages

You can use a single script or all at once. main.sh calls all the others.
You can add PPAs, apt-packages or flatpaks to be installed by main.sh by adding them line by line to .lst files.

Be sure to run <code>chmod +x *.sh</code> before executing scripts.
