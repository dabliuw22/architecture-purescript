module Capability.Resource.Product
  ( class GetProducts
  , ProductQuery(..)
  , query
  ) where

import Prelude
import App.AppM (AppM)
import Control.Monad.Reader (class MonadReader)
import Data.Product (Product, ProductId(..), ProductName(..))
import Effect.Class (class MonadEffect)

data ProductQuery
  = AllProducts
  | ProductById String

class
  Monad m <= GetProducts m where
  query :: ProductQuery -> m (Array Product)

instance getProductsAppM :: GetProducts AppM where
  query = queryImpl

queryImpl :: forall e m. MonadReader e m => MonadEffect m => ProductQuery -> m (Array Product)
queryImpl AllProducts = pure [ { id: ProductId "id", name: ProductName "Name" } ]

queryImpl (ProductById id) = pure [ { id: ProductId id, name: ProductName "Name" } ]
