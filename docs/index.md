# Kilo layouts (en)

Better English keyboard layouts 
generated using [kilo](https://www.tghaleb.eu.org/kilo).
For some background on the different factors to consider in keyboard
layouts optimization, take a look at 
[layout optimization philosophy](https://www.tghaleb.eu.org/kilo/#philosophy/).

There is no *best* layout. These layouts offer different advantages
and cater to different tastes. Some people prefer the vowels on the
right, others prefer them on the left. There is also the question of how
important same finger is when it involves the stronger index and middle fingers
and how much weight to assign to it.
Here, some layouts sacrifice a little efficiency in letter placement
to achieve better overall results. If none of these layouts
meet your requirements you might want to download [kilo](https://www.tghaleb.eu.org/kilo) and create your own from scratch.

The layouts come in two flavors:

Basic:
![kilo32](images/kilo32.svg)
![kilo37](images/kilo37.svg)
![kilo46](images/kilo46.svg)
![kilo68](images/kilo68.svg)


and Scientific/International:
![kilo32](images/kilo32s.svg)
![kilo37](images/kilo37s.svg)
![kilo46](images/kilo46s.svg)
![kilo68](images/kilo68s.svg)

The international part of it is by using the compose key and the
level3/level4 keys and are still a work in progress.

Here are some stats.

```json
name: kilo37
layout: wvcdg/,yu'jrnstloaeih.qbpmzfk-;x
score: 87.31
positional_effort: 32.89
alternation: 70.33
text_direction: 51.90
same_hand:
  jumps: 0.03
  same_finger:
    rp: 0.40
    im: 4.06
  adjacent-mrp:
    inward: 2.52
    outward: 0.29
balance: 52.29
  rows: [17.18, 73.56, 9.08]
  fingers: [7.95, 9.59, 11.82, 22.93, 0.00, 0.00, 17.25, 14.09, 10.18, 6.01]
    indices: 40.18
    middles: 25.91
    rings: 19.77
    pinkies: 13.96

name: kilo32
layout: 'yo,kvcldpbaiehumsrtnq/j;-x.fwgz
score: 61.64
positional_effort: 37.44
alternation: 70.33
text_direction: 46.74
same_hand:
  jumps: 0.36
  same_finger:
    rp: 0.51
    im: 2.74
  adjacent-mrp:
    inward: 6.57
    outward: 1.83
balance: 47.53
  rows: [26.63, 65.88, 7.31]
  fingers: [8.15, 9.17, 19.89, 10.32, 0.00, 0.00, 15.28, 11.93, 14.30, 10.78]
    indices: 25.60
    middles: 31.82
    rings: 23.47
    pinkies: 18.93

name: kilo46
layout: ',oukgcldpvaiehymsrtnb/;z-x.fwjq
score: 64.44
positional_effort: 37.55
alternation: 70.30
text_direction: 46.64
same_hand:
  jumps: 0.14
  same_finger:
    rp: 0.49
    im: 2.97
  adjacent-mrp:
    inward: 4.75
    outward: 1.68
balance: 47.51
  rows: [28.35, 65.97, 5.50]
  fingers: [8.15, 8.44, 19.96, 10.96, 0.00, 0.00, 16.10, 11.93, 12.50, 11.78]
    indices: 27.06
    middles: 31.89
    rings: 20.94
    pinkies: 19.93

name: kilo68
layout: xzoi-wncgvkyheaulrsdtmq/;.',fpbj
score: 86.11
positional_effort: 40.18
alternation: 70.23
text_direction: 56.00
same_hand:
  jumps: 0.13
  same_finger:
    rp: 0.39
    im: 4.41
  adjacent-mrp:
    inward: 3.28
    outward: 0.12
balance: 47.02
  rows: [31.13, 60.56, 8.13]
  fingers: [1.99, 4.41, 19.89, 20.73, 0.00, 0.00, 21.23, 11.82, 6.81, 12.94]
    indices: 41.96
    middles: 31.71
    rings: 11.22
    pinkies: 14.93

name: QWERTY
layout: qwertyuiop[asdfghjkl;'zxcvbnm,./
score: 1.35
positional_effort: 64.74
alternation: 47.89
text_direction: 50.49
same_hand:
  jumps: 9.66
  same_finger:
    rp: 2.31
    im: 8.77
  adjacent-mrp:
    inward: 3.62
    outward: 4.00
balance: 64.23
  rows: [50.67, 31.41, 17.77]
  fingers: [8.13, 8.18, 19.09, 28.83, 0.00, 0.00, 11.29, 9.02, 12.96, 2.35]
    indices: 40.12
    middles: 28.11
    rings: 21.14
    pinkies: 10.48
```

## Features

Letter placement for QWERTY (positional effort)

![qwerty heat](images/QWERTY.heat.svg)

Better placement,

![kilo32 heat](images/kilo32.heat.svg)
![kilo37 heat](images/kilo37.heat.svg)
![kilo46 heat](images/kilo46.heat.svg)
![kilo68 heat](images/kilo68.heat.svg)

And here is the `positional_effort` compared, it's probably acceptable 
to sacrifice a litter efficiency here to achieve better results overall. 

![effort](images/layouts.db.positional_effort.svg)

Also, note that changing he weights for keys will change the positional effort
score anyway. Here are the weights used.

![weights](images/weights.svg)

Better `alternations`,

![effort](images/layouts.db.alternation.svg)

Minimal `jumps`,

![jumps](images/layouts.db.jumps.svg)

Minimal `outward` adjacent fingers (excluding Index finger)

![outward](images/layouts.db.outward.svg)

Minimal `same_finger_rp` (excluding Index and Middle fingers)

![same_finger_rp](images/layouts.db.same_finger_rp.svg)

`jumps`, `outward` and `same_finger_rp` combined compared.

![same hand](images/layouts.db.same_hand_effort.svg)

`jumps`, `outward` and `same_finger_rp` combined plus `same_finger_im`, if we
want to consider it, compared.

![same hand](images/layouts.db.same_hand_effort_im.svg)

Combined same finger, adds same index/middle fingers score, 
some layouts don't give this a lot of weight.

![same_finger_rp](images/layouts.db.same_finger_both.svg)

`kilo` score not very important since it depends on weights used and
configuration values, but can be used as a rough indication,

## Extra features

- Changes the placement of the shift keys, allowing the use of the thumbs
to shift instead of the pinkies. This is not a part of the optimization
stats, but if you try it and don't like it you can always use the regular
shift keys.

- Uses shift keys for level 3/4 to make it easier to use these levels.
- Hijacks caps key.

## Installation


This assumes you are using `Linux`. If you plan on customizing you'll need to install
[kilo](https://www.tghaleb.eu.org/kilo) and read it's documentation.

Get it from [repository](https://github.com/tghaleb/kilo-layouts-en),
unpack into a directory and,

```console
make
```

On `Linux` use the files `out/*.xkb` by appending them to
`/usr/share/X11/xkb/symbols/us` and 
editing `/usr/share/X11/xkb/rules/evdev.[xml,lst]` 
and `base.[xml/lst]`

etc. See keyboard layouts customization documentation for your distro.

On other operating systems there should be tools
to help you create customized layouts.

