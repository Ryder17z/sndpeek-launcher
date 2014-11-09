:: >> STARTUP <<
@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
echo Launching sndppek with a sample configuration:
:: << STARTUP >>

:: >> CONFIG << (HINT: SEE "CONFIG SETUP" SECTION)

set fullscreen=--fullscreen:OFF

set features=--features:ON
:: INFO TEXTS

set waveform=--waveform:ON
:: ENABLE A DIFFERENT WAVEFORM (BLUE)
set lissajous=--lissajous:ON
:: ENABLE THE "Lissajous figure" ALSO KNOWN AS THE "Bowditch curve"

set waterfall=--waterfall:ON
:: WAVEFORM WATERFALL EFFECT
set spacing=--spacing:0.176397
:: WATERFALL SPACING
set backward=--backward:ON
:: REVERSED WATERFALL EFFECT
set dB=--dB:OFF
:: DB (LOGARITHMIC GREEN/YELLOW WAVEFORM)
set fallingcolors=--fallcolors:OFF
:: RAINBOW EFFECT (GREEN AND YELLOW)
:: NOTICE THE NAMING DIFFERENCE HERE: "echo %fallcolors% will trigger an odd print saying ECHO is OFF"

set mute=--mute:OFF
:: ONLY APPLIES IF SNDPEEK IS PLAYING A FILE
set showtime=--showtime:OFF
:: UNKNOWN. PROBABLY RELATED TO PLAYING A FILE WITH SNDPEEK

set freeze=--freeze:OFF
:: FREEZE CURRENT RENDERED FRAME

:: missing documentation here
set timescale=--timescale:23.262712
set freqscale=--freqscale:9.792578
set logfactor=--logfactor:0.523883
set lissscale=--lissscale:30.623538
set zpos=--zpos:0.300000
set dzpos=--dzpos:0.100000
set yview=--yview:0.000000
set depth=--depth:48
set preview=--preview:0.333333
set rotatem=--rotatem:1.000000
set rotatek=--rotatek:1.000000
set begintime=--begintime:0.000000
set ds=--ds:0

:: CUSTOM OPTIONS (THESE CAN ONLY BE TOGGLED OFF OR ON BY TRUE OR FALSE - DO NOT EDIT THEM)
set INTERNAL_nodisplay=false
set INTERNAL_print=false
:: WARNING: THESE OPTIONS ARE UNDEFINED!

:: << CONFIG >>

:: >> PRINT CONFIG <<
echo %fullscreen% %freeze%
echo %waveform% %lissajous% %waterfall% %spacing%
echo %fallingcolors% %dB% %backward% %features%
echo.
echo %timescale% %freqscale% %lissscale%
echo %zpos% %dzpos% %logfactor%
echo.
echo %begintime% %showtime%
echo %preview% %depth% %yview%
echo %rotatem% %rotatek% %ds%
echo.
echo.
:: << PRINT CONFIG >>

:: >> CONTINUE <<
goto init
:: << CONTINUE >>

:: >> CONFIG SETUP << (REFERENCE SECTION)

  Usage: set [option name]=--option:parameter

  ON/OFF options: fullscreen|waveform|lissajous|waterfall|
                  dB|features|fallcolors|backward|showtime|
                  freeze
  number options: timescale|freqscale|lissscale|logfactor|
                  spacing|zpos|dzpos|depth|preview|yview|
                  rotatem|rotatek|begintime|ds
   other options: nodisplay|print

:: << CONFIG SETUP >>

:: >> INITIALIZE << (DO THE NECESSARY SETUP)
:init
set CONFIG=%fullscreen% %waveform% %lissajous% %waterfall% %dB% %features% %fallingcolors% %backward% %showtime% %freeze% %timescale% %freqscale% %lissscale% %logfactor% %spacing% %zpos% %dzpos% %depth% %preview% %yview% %rotatem% %rotatek% %begintime% %ds%
:: << INITIALIZE <<

:: >> EXECUTE << (LAUNCH SNDPEEK WITH THE PROVIDED CONFIGURATION)
if /I '%INTERNAL_nodisplay%' == 'true' (
   echo Warning! --nodisplay usage detected!
   if /I '%INTERNAL_print%' == 'false' (
      sndpeek.exe %CONFIG% --nodisplay
   ) else (
      sndpeek.exe %CONFIG% --nodisplay --print
   )
) else (
   if /I '%INTERNAL_print%' == 'true' (
      sndpeek.exe %CONFIG% --print
   ) else (
      sndpeek.exe %CONFIG%
   )
)
:: >> EXECUTE <<
