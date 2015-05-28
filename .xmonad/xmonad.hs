import Graphics.X11.ExtraTypes.XF86
import System.IO
import XMonad
import XMonad.Core
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig(additionalKeys)

myKeys =
  [
    ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
    , ((0                     , xF86XK_AudioPlay), spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause")
    , ((0                     , xF86XK_AudioLowerVolume), spawn "amixer set Master 3-")
    , ((0                     , xF86XK_AudioRaiseVolume), spawn "amixer set Master 3+")
    , ((0                     , xF86XK_AudioMute), spawn "amixer set Master toggle")
  ]

main = xmonad $ ewmh defaultConfig{
    handleEventHook = handleEventHook defaultConfig <+> fullscreenEventHook
  }
  `additionalKeys` myKeys
