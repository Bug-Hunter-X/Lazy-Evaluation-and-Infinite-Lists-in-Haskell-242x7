The solution involves forcing the evaluation of the `take` function's result before attempting to print it.  This can be achieved using `$` operator or by explicitly evaluating the list with `seq`.

```haskell
infiniteList :: [Integer]
infiniteList = [1..]

main :: IO ()
main = do
  let result = take 5 infiniteList
  print $ result

--Alternative solution using seq:
--main :: IO ()
--main = do
--  let result = take 5 infiniteList
--  result `seq` print result
```
The `$` operator ensures that `take 5 infiniteList` is evaluated before `print` is called. The `seq` function forces evaluation of the first argument before returning the second. This prevents the infinite evaluation chain.