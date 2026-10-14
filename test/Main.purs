module Test.Main where

import Prelude

import Effect (Effect)
import Safe.Coerce (coerce)
import Test.Assert (assert)

newtype X = X String

main :: Effect Unit
main =
  assert $ "hi" == coerce (X "hi")

