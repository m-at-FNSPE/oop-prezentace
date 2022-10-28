{-
Úvodní příklad pro monády
-}

addGreeting :: [Char] -> [Char]
addGreeting name = "Hello " ++ name

main :: IO ()
main = do
    let names = map addGreeting ["James", "John", "George"]
    mapM_ print names
