{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use newtype instead of data" #-}
data CoolBool = CoolBool {getCoolBool :: Bool}

helloMe :: CoolBool -> String
helloMe (CoolBool _) = "hello"

newtype CoolBool' = CoolBool' {getCoolBool' :: Bool}

helloMe' :: CoolBool' -> String
helloMe' (CoolBool' _) = "hello"
