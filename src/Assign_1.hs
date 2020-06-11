{- Assignment 1
 - Name: Jerin John
 - Date: 29 September 2019
 -}
module Assign_1 where

macid :: String
macid = "johnj16"

{- -----------------------------------------------------------------
 - cubicQ
 - -----------------------------------------------------------------
 - Description: TODO add comments on cubicQ here 
 -}
cubicQ :: Double -> Double -> Double -> Double
cubicQ a b c = ((3*a*c)-(b^2))/(9*(a^2))

{- -----------------------------------------------------------------
 - cubicR
 - -----------------------------------------------------------------
 - Description: TODO add comments on cubicR here 
 -}
cubicR :: Double -> Double -> Double -> Double -> Double
cubicR a b c d = ((9*a*b*c)-(27*(a^2)*d)-2*(b^3))/(54*(a^3))

{- -----------------------------------------------------------------
 - cubicDisc
 - -----------------------------------------------------------------
 - Description: TODO add comments on cubicDisc here 
 -}
cubicDisc :: Double -> Double -> Double
cubicDisc q r =  (q^3)+(r^2)

{- -----------------------------------------------------------------
 - cubicS
 - -----------------------------------------------------------------
 - Description: TODO add comments on cubicS here 
 -}
cubicS :: Double -> Double -> Double
cubicS q r = (r + ((q^3 + r^2) ** (1/2))) ** (1/3)

{- -----------------------------------------------------------------
 - cubicT
 - -----------------------------------------------------------------
 - Description: TODO add comments on cubicT here 
 -}
cubicT :: Double -> Double -> Double
cubicT q r = (r - (q^3 + r^2) ** (1/2) ) ** (1/3)

{- -----------------------------------------------------------------
 - cubicRealSolutions
 - -----------------------------------------------------------------
 - Description: TODO add comments on cubicRealSolutions here 
 -}
cubicRealSolutions :: Double -> Double -> Double -> Double -> [Double]
cubicRealSolutions a b c d = do 
    let
        q = cubicQ a b c
        r = cubicR a b c d
    if cubicDisc q r < 0 then []
    else
        let
            s  = cubicS q r 
            t  = cubicT q r 
            x1 = s+t-(b/(3*a))
            x2 = -((s+t)/2) - (b/(3*a))
            x3 = -((s+t)/2) - (b/(3*a))
        in 
            if cubicDisc q r > 0 then [x1]
            else [x1,x2,x3]
          

{- -----------------------------------------------------------------
 - Test Cases 
 - -----------------------------------------------------------------
 -}

-- TODO Add Test Cases for each of your functions below here