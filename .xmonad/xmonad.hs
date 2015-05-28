import Graphics.X11.ExtraTypes.XF86
import System.IO
import XMonad
import XMonad.Core
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig

myKeys =
  [
    (("M4-l"), spawn "slock"),
    (("<XF86AudioPlay>"), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"),
    (("<XF86Back>"), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous"),
    (("<XF86Forward>"), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next"),
    (("<XF86AudioLowerVolume>"), spawn "amixer set Master 3-"),
    (("<XF86AudioRaiseVolume>"), spawn "amixer set Master 3+"),
    (("<XF86AudioMute>"), spawn "amixer set Master toggle")
  ]

main = xmonad $ ewmh defaultConfig{
    handleEventHook = handleEventHook defaultConfig <+> fullscreenEventHook
  }
  `additionalKeysP` myKeys
