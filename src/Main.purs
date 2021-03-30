module Main where

import App.AppM
import Domain.Program (program)
import Effect (Effect)
import Prelude (Unit, ($))
import Effect.Aff (launchAff_)

main :: Effect Unit
main = launchAff_ $ runAppM { env: "Main" } program
