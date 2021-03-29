module Data.Product where

import Prelude

newtype ProductId
  = ProductId String

derive newtype instance eqProductId :: Eq ProductId

instance showProductId :: Show ProductId where
  show (ProductId id) = show id

newtype ProductName
  = ProductName String

derive newtype instance eqProductName :: Eq ProductName

instance showProductName :: Show ProductName where
  show (ProductName id) = show id

type Product
  = { id :: ProductId
    , name :: ProductName
    }
