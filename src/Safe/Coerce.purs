module Safe.Coerce
  ( module Prim.Coerce
  , coerce
  ) where

import Prim.Coerce (class Coercible)
import Unsafe.Coerce (unsafeCoerce)

-- | One application for this function is to avoid doing work that you know is a
-- | no-op because of newtypes. For example, if you have an `Array (Conj a)` and you
-- | want an `Array (Disj a)`, you could do `Data.Array.map (runConj >>> Disj)`, but
-- | this performs an unnecessary traversal. `coerce` accomplishes the same
-- | for free.
-- |
-- | ```purescript
-- | mapConjToDisj :: forall a. Array (Conj a) -> Array (Disj a)
-- | mapConjToDisj = coerce
-- | ```
coerce :: forall a b. Coercible a b => a -> b
coerce = unsafeCoerce
