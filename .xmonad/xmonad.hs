import Graphics.X11.ExtraTypes.XF86
import System.IO
import XMonad
import XMonad.Core
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig

myKeys =
  [
    (("M4-l"), spawn "slock"),
    (("<XF86AudioPlay>"), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"),
    (("<XF86AudioPrev>"), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous"),
    (("<XF86Back>"), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous"),
    (("<XF86AudioNext>"), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next"),
    (("<XF86Forward>"), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next"),
    (("<XF86AudioLowerVolume>"), spawn "pactl set-sink-volume @DEFAULT_SINK@ -3%"),
    (("<XF86AudioRaiseVolume>"), spawn "pactl set-sink-volume @DEFAULT_SINK@ +3%"),
    (("<XF86AudioMute>"), spawn "amixer -D pulse set Master toggle"),
    (("<XF86MonBrightnessUp>"), spawn "brightness -i"),
    (("<XF86MonBrightnessDown>"), spawn "brightness -d"),
    (("M4-p"), spawn "change-mon -f")
  ]

main = do
  xmproc <- spawnPipe "/home/hatchan/bin/xmobar"
  xmonad $ ewmh defaultConfig
    { startupHook = spawn "xset r rate 300 30"
    , manageHook = manageDocks <+> manageHook defaultConfig
    , layoutHook = avoidStruts  $  layoutHook defaultConfig
    , logHook = dynamicLogWithPP xmobarPP
        { ppOutput = hPutStrLn xmproc
        , ppTitle = xmobarColor "green" "" . shorten 200
        }
    , handleEventHook = mconcat 
                      [ docksEventHook
                      , handleEventHook defaultConfig <+> fullscreenEventHook]
    }
    `additionalKeysP` myKeys
