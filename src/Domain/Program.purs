module Domain.Program where

import Prelude
import Capability.Resource.Product
  ( class GetProducts
  , ProductQuery(..)
  , query
  )
import Effect.Class (class MonadEffect, liftEffect)
import Effect.Console (log)
import Effect.Aff.Class (class MonadAff)

program :: forall m. GetProducts m => MonadEffect m => MonadAff m => m Unit
program = do
  product <- query $ ProductById "id"
  liftEffect $ log (show product)
  liftEffect $ log "End"
