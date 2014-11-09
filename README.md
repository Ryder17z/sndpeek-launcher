-----------------------------
sndpeek-launcher
================
----------
This is a configurable launcher script which is easily modified.

-----------------------------
[sndpeek - real-time audio visualization](http://soundlab.cs.princeton.edu/software/sndpeek/)
================

![alt text][1]
  [1]: http://soundlab.cs.princeton.edu/images/sndpeek6.jpg

----------
The sndpeek-launcher is easily configured in any text or code editor of your choice.


Script Version: 0.6
Documentation Version: 0.4

The launcher is essentially just a script with different sections.

For example, here is the reference section:
```ruby
:: >> CONFIG SETUP << (REFERENCE SECTION)

  Usage: set [option name]=--option:parameter

  ON/OFF options: fullscreen|waveform|lissajous|waterfall|
                  dB|features|fallcolors|backward|showtime|
                  freeze
  number options: timescale|freqscale|lissscale|logfactor|
                  spacing|zpos|dzpos|depth|preview|yview|
                  rotatem|rotatek|begintime|ds
   other options: nodisplay|print

:: << END OF CONFIG SETUP >>
```
----------
Lets for example turn off the blue waveform by default:

Start by finding this section:
```ruby
:: >> CONFIG << (HINT: SEE "CONFIG SETUP" SECTION)
```
This is where all the options are configured

Now find the correct option to change:
```ruby
set waveform=--waveform:ON
:: ENABLE A DIFFERENT WAVEFORM (BLUE)
```
By changing "ON" to "OFF" the waveform will now be deactiavted by default.

And it will look like this:
```ruby
set waveform=--waveform:OFF
:: ENABLE A DIFFERENT WAVEFORM (BLUE)
```
-----------------------------
Or what if you want a smaller lissajous figure?
In the config section, find the 'lissscale' option:
```ruby
set lissscale=--lissscale:30.623538
```
Changing the number 30.623538 will scale the lissajous figure up or down, higher values will scale up and lower will scale down.


This would be roughly half the size:
```ruby
set lissscale=--lissscale:15.2
```

Setting the numeric options correctly could be challenging, but with some experimentation, you will most likely find values within your preferences.


-----------------------------
More is to come later on. Check repo license file for the licensing details of this launcher and/or sndpeek itself if you would like to develop on either project.

All credits goes to the authors of [sndpeek](http://soundlab.cs.princeton.edu/software/sndpeek/).
