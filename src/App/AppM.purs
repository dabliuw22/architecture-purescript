module App.AppM where

import Prelude
import App.Env (Env)
import Control.Monad.Reader (class MonadAsk, class MonadReader)
import Control.Monad.Reader.Trans (ReaderT, runReaderT)
import Effect.Class (class MonadEffect)
import Effect.Aff (Aff)
import Effect.Aff.Class (class MonadAff)

newtype AppM a
  = AppM (ReaderT Env Aff a)

derive newtype instance functorAppM :: Functor AppM

derive newtype instance applyAppM :: Apply AppM

derive newtype instance applicativeAppM :: Applicative AppM

derive newtype instance bindAppM :: Bind AppM

derive newtype instance monadAppM :: Monad AppM

derive newtype instance monadEffectAppM :: MonadEffect AppM

derive newtype instance monadAffAppM :: MonadAff AppM

derive newtype instance monadAskAppM :: MonadAsk Env AppM

derive newtype instance monadReaderAppM :: MonadReader Env AppM

runAppM :: Env -> AppM ~> Aff
runAppM env (AppM m) = runReaderT m env
