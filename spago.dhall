{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "architecture-purescript"
, dependencies =
  [ "aff"
  , "console"
  , "effect"
  , "free"
  , "maybe"
  , "psci-support"
  , "transformers"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
