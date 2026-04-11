import Data.Bits
import GHC.ByteOrder

main :: IO ()
main = do
    let byteOrder = case targetByteOrder of
            BigEndian -> "big endian"
            LittleEndian -> "little endian"
        wordSize = finiteBitSize (0 :: Int)
    putStrLn $ "hello from a " ++ byteOrder ++ " " ++ show wordSize ++ " bit arch"
