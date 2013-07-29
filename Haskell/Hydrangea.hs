module Main (main) where

import qualified Graphics.UI.GLFW as GLFW


main :: IO ()
main = do
  succeeded <- GLFW.initialize
  if succeeded
    then do
      putStrLn "Hm."
      return ()
    else return ()
