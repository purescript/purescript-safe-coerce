
module Safe.Coerce
  ( coerce
  ) where

import Prim.Coerce (class Coercible)
import Unsafe.Coerce (unsafeCoerce)

coerce :: forall a b. Coercible a b => a -> b
coerce = unsafeCoerce
