import System.Exit

fizzbuzz :: [Int] -> IO()
fizzbuzz [] = exitSuccess
fizzbuzz (x:xs) = do
    case () of
        () | (mod x 3 == 0) && (mod x 5 == 0) -> putStrLn "FizzBuzz"
           | mod x 3 == 0                     -> putStrLn "Fizz"
           | mod x 5 == 0                     -> putStrLn "Buzz"
           | otherwise                        -> print x
    fizzbuzz xs

fizzbuzz2 :: [Int] -> IO()
fizzbuzz2 [] = return ()
fizzbuzz2 (x:xs) = putStrLn (showFizzBuzz x) >> fizzbuzz2 xs
    where showFizzBuzz x | (mod x 3 == 0) && (mod x 5 == 0) = "FizzBuzz"
                         | mod x 3 == 0                     = "Fizz"
                         | mod x 5 == 0                     = "Buzz"
                         | otherwise                        = show x
