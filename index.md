---
title: oitofelix - Terminal Matrix 8086
description: >
  Terminal Matrix is a very mysterious program.
tags: >
  QDot, 8086 Assembly, NASM, IBM-PC
license: CC BY-SA 4.0
layout: oitofelix-homepage
base: http://oitofelix.github.io
#base_local: http://localhost:4000
---
<div id="markdown" markdown="1">
## Terminal Matrix 8086

![Terminal Matrix logo]({{ page.base_local }}{{ site.baseurl }}/logo.png)

__Terminal Matrix__ is a very mysterious program.  It's said that it
was given to mankind in a spontaneous form of divine inspiration and
cybernetic insight.  Rumor has it that few people in the entire world
are able to master and use this program.  Some say, in an expression
of dubious lucidity, that only the chosen ones can really do it.
There are a handful reports of very skilled hackers that were able to
crack _TM_'s source code and understand the truth that has never been
seen before, and unlock its full potential.  The only truth known for
sure, though, is that much is said, but little is known.

The most astonishing fact about _TM_ is that, believe you or not, it's
designed to establish an inter-dimensional connection to an
hyper-dimensional being called _RIS_, that supposedly shows incredible
divination powers and unmatched wisdom to those who manage to contact
him.  Out there, you may hear that people able to talk to _RIS_
comprise a select group that share a common and dangerous secret about
the nature of reality, and for the greater good they won't tell anyone
else what it is, despite their goodwill and empathy towards outsiders,
helping them by bridging the communication.

Below you can find the result of a lot of research and efforts made by
hackers like me in deciphering _TM_'s workings.  Based upon the
premise of the right to know, now I release these to an wider
audience, willing to contribute to society and hoping humanity can
handle and make good use of it.

_TM_ is written in a new mid-level computer programming language
called [QDot](http://oitofelix.github.io/qdot-8086).  It runs on any
IBM-PC compatible, being the minimum requirement an 8086 processor
with 32Kb of RAM, and any color graphics adapter such as _CGA_, _EGA_
or _VGA_.  No network card or any other type of communication
peripheral is required besides a screen and a keyboard.  Its magical
binary sums up to just a dozen kilobytes and very surprisingly is
simultaneously a valid _DOS_ executable and a bootable disk image,
meaning that it can run even on machines with no operating system at
all!  Those almost insanely modest requirements blow the minds of
skeptical people, because no one can explain how this program's great
feats are technologically achievable.


### Download

_TM_ is available in two languages: _American English_ and _Brazilian
Portuguese_.  You can download its binaries below.

- [TM86 1.0 EN-US]({{ page.base_local }}{{ site.baseurl }}/tm-en-us.com)
- [TM86 1.0 PT-BR]({{ page.base_local }}{{ site.baseurl }}/tm-pt-br.com)

_TM_ is free software under _GPLv3+_ and you can obtain its source
code here.  It requires [NASM](http://www.nasm.us/), _The Netwide
Assembler_, in order to be built, and
[GNU Make](http://www.gnu.org/software/make/) to automate that
process.

- [TM86 1.0]({{ page.base_local }}{{ site.baseurl }}/terminal-matrix-8086-1.0.tar.gz)
- [VCS repository](http://github.com/oitofelix/terminal-matrix-8086/)


### Run

_TM_ can run directly on real hardware or inside a virtual machine ---
under DOS, or bootstrapping itself.  To use it under DOS on bare
metal, just copy its binary to the respective machine and run it as
usual:

<pre>
C:\>TM-EN-US.COM
</pre>

I recommend you use [FreeDOS](http://www.freedos.org/), the free
software implementation of _DOS_, for best results.  To run _TM_
without operating system support you need to write it to a storage
medium that your computer can boot from; it may be a floppy disk, a
hard drive, an optical disk or even an USB mass storage device.  Using
this method requires that you afford a dedicated media only for _TM_,
so make sure to backup any existing data, and to reformat the media
when re-purposing it.

You can use [RAWWRITE](http://www.freedos.org/software/?prog=rawrite)
to make a bootable floppy disk under _DOS_.  Just run _RAWWRITE_ and
follow the prompts inputting the program's binary name
(eg. `tm-en-us.com`) and the destination floppy drive letter
(eg. `a:`).  Under _GNU_ you can use the command-line utility `dd`, of
the [GNU coreutils](http://www.gnu.org/software/coreutils) package, to
make a bootable floppy disk, hard disk or USB mass storage device.  If
you are logged in as root, the incantation is as simple as:

<pre>
# dd if=tm-en-us.com of=&lt;device-node&gt;
</pre>

Where the variable `device-node` is the device node of the respective
drive.  In _GNU_ you can also make a bootable optical disk by using
the command-line utility `genisoimage`, from the _cdrkit_ package, in
the following way:

<pre>
$ mkdir tm-en-us
$ mv tm-en-us.com tm-en-us
$ genisoimage -no-emul-boot -b tm-en-us.com -o tm-en-us.iso tm-en-us
</pre>

This generates the `tm-en-us.iso` file that is a bootable optical disk
image that you can burn using `wodim` (from the same package as
`genisoimage`) or similar software.

If you'd like to run _TM_ on a virtual machine under _DOS_ your best
bet is probably [DOSBox](http://www.dosbox.com/), but
[DOSEMU](http://www.dosemu.org/) also does the job; it doesn't support
blinking text, though, which is rendered in a gray background.  For
any of them, just run the program as you would in a real _DOS_
machine.  To run it in a virtual machine without any operating system
installed you can use [QEMU](http://www.qemu.org/) instead --- just
invoke it like this:

<pre>
$ qemu-system-i386 -fda tm-en-us.com
</pre>

Unfortunately, it also doesn't support blinking text.


### Use

To get a feel of how _TM_ looks like, a video of a session recorded in
_DOSBox_, specifically for this purpose, has been made available.
Enjoy!

<video controls>
  <source src="{{ page.base_local }}{{ site.baseurl }}/tm.mp4" type="video/mp4">
</video>

<div style="text-align: center;" markdown="1">
[Original recording]({{ page.base_local }}{{ site.baseurl }}/tm.avi)
</div>

### Authentication

Right after _TM_ starts up you are presented with a log-in screen.
It's unknown to date how to get an arbitrary user/password pair to
authenticate in the program.  However, a particular pair is known to
work:

- User: `GUEST`
- Password: `v&t$%`


### Graphics

_TM_ adapts its graphic output to the graphics adapter at hand.  The
following pictures demonstrates this feature for graphics card in
increasing order of functionality: _CGA_ (25 rows), _EGA_ (43 rows)
and _VGA_ (50 rows), respectively.

<figure>
  <figcaption>CGA</figcaption>
  <img src="{{ page.base_local }}{{ site.baseurl }}/tm-cga.png">
</figure>

<figure>
  <figcaption>EGA</figcaption>
  <img src="{{ page.base_local }}{{ site.baseurl }}/tm-ega.png">
</figure>

<figure>
  <figcaption>VGA</figcaption>
  <img src="{{ page.base_local }}{{ site.baseurl }}/tm-vga.png">
</figure>

_TM_ includes a Matrix decimal decoder that you can invoke by the
command `DCMATRIX`.  It has been isolated as a standalone program
called [DeciMatrix 8086](/decimatrix-8086).

<figure>
  <figcaption style="border: 2px solid green;">DeciMatrix 8086</figcaption>
  <img style="border: 2px solid green;" src="{{ page.base_local }}{{ site.baseurl }}/decimatrix.png">
</figure>



</div>
