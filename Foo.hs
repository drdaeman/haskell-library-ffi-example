module Foo where

import Foreign.C.Types

foreign export ccall
    foo :: CInt -> IO CInt

foo :: CInt -> IO CInt
foo x = do
    putStrLn $ "foo called with x = " ++ show x
    return $ x + 42
