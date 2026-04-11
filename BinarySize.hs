{-# LANGUAGE DeriveGeneric #-}

import GHC.Generics
import Data.Binary
import Data.Binary.Put

data X = A | B | C | D deriving (Show, Generic)
instance Binary X

-- Ouputs: "\NUL" on x86_64
-- Output: "\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL" on arm32
main = print $ runPut (put A)
