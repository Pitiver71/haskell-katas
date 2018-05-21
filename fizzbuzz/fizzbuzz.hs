{-# LANGUAGE MultiWayIf #-}

import System.Exit

fizzbuzz :: [Int] -> IO()
fizzbuzz [] = exitSuccess
fizzbuzz (x:xs) = do
    {-
    let v = if | (mod x 3 == 0) && (mod x 5 == 0) -> "FizzBuzz"
               | mod x 3 == 0                     -> "Fizz"
               | mod x 5 == 0                     -> "Buzz"
               | otherwise                        -> show x
    putStrLn v        
    -}
    case () of
        () | (mod x 3 == 0) && (mod x 5 == 0) -> putStrLn "FizzBuzz"
           | mod x 3 == 0                     -> putStrLn "Fizz"
           | mod x 5 == 0                     -> putStrLn "Buzz"
           | otherwise                        -> print x
    fizzbuzz xs

