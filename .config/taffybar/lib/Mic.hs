module Mic(micW) where
import Widgets (label, clickableLeft)
import System.Environment (getEnv)
import Volume (isMuted)
import Utils (fg)

micW = clickableLeft clickCmd =<< label getMic

getMic = do
  muted <- isMuted "microphone"
  return $ fg (if muted then "black" else "red") "M"

clickCmd = "pulse-vol microphone toggle"
