# Overview

A first level character generator designed for use with the [Basic Fantasy Role Playing Game](https://basicfantasy.org).

Implements character generation per the [Core Rules](https://basicfantasy.org/downloads/Basic-Fantasy-RPG-Rules-r107.pdf), along with [Equipment Packs](https://basicfantasy.org/downloads/BF-Equipment-Packs-r1.pdf), [0-Level Spells](https://basicfantasy.org/downloads/BF-0-Level-Spells-Supplement-r1.pdf) and two house rules:

* Maximal HP at first level, computed as the greater of: max HP for chosen race/class; or max HP for chosen race/class + CON modifier.
* Trading between certain ability scores 2:1 as described in Moldvay B/X D&D.

## Quick Start

This is a single-page web application with no server-side components. Run `make all` to build the application. This will download [Bootstrap](https://getbootstrap.com/) components and [Font Awesome Icons](https://fontawesome.com/v4.7.0/icons/) from their respective CDNs into the `site` directory, which can then be served as desired.

Load `cgen.html` into a browser and enter a name, background, race, class and equipment pack(s). Click the lock button and use the +/- to modify abilities. The reset button will revert any ability score changes to the original "rolled" version. Select additional languages and spells per abilities and class. Save your character by copying the value of the link field.

Don't like the numbers? Reload the page and try again!

## Known Issues/Limitations

* It is possible to create illegal combinations of race/class/equipment under certain circumstances

## Future Directions

* Generate higher-level characters
* Additional races/classes

## Credits

Contains content Copyright &copy; 2006-2016 Chris Gonnerman; and Copyright &copy; 2009 Shayne Power; and Copyright &copy; 2009 Sidney Parham, Nazim Karaca, R. Kevin Smoot, ckutalik, steveman, Svankensen, and Chris Gonnerman and released under the terms of the [Open Game License 1.0a](http://opengamingfoundation.org/ogl.html).

