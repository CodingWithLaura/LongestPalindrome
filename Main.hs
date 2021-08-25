{- stringliste geht rein, Int kommt raus -> Wert ist länge Palindrom
- stringliste muss nicht gesplittet werden weil string ist Liste von Chars?!
- dann muss sortiert werden und mit rekursion geguckt ob strings gleich, wenn ja akku hochzählen
- dann gucken ob Anzahl der Strings 1 ist oder durch 2 Teilbar, wenn ja wird die Anzahl der strings auf akku addiert und ausgegeben

1.String  -> sortierte liste von zahlen
1.1 String -> ascii liste -ord function
1.2 sortieren mit sort
--------------------------------
halbe miete :)
- wir ham lite mit zahlen
function (    letzterWert, haeufigkeitWert   ,aktuellLaengsteUngerade  ,  LaengePaliAkku  ,liste)   = LaengeWert

- die aktuelle ungerade muss am ende die längste sein
- das Häufchen ist fertig wenn ein neuer Intwert in der Liste auftaucht

-}

{-
palindromeAux :: (Int -> Int -> Int -> Int -> [Int]) -> Int                             
palindromeAux (letzterWert, haeufigkeitWert, aktuellLaengsteUngerade, laengePaliAkku, (x:xs)) |bedingungskrams = palindromeAux (letzterWert, haeufigkeitWert, aktuellLaengsteUngerade, laengePaliAkku, (xs))

  | x == letzterWert haufigkeitWert + 1
    | otherwise  haeufigkeitsWert + leangePaliAkku und setz den haufen wieder auf 0  

    | haeufigkeitswert % 2 != 0 && haeufigkeitswert > aktuellLaengsteUngerade aktuellLaengsteUngerade = haeufigkeitswert

am Ende (wenn die Liste leer ist)  wird die aktuellLaengsteUnergade + leangePaliAkku

palindromeAux (letzterWert, haeufigkeitWert, aktuellLaengsteUngerade, laengePaliAkku, (x:xs))


bedingungen                                         Aktionen
b0 b1 b2 ...
0  0  0               A2 A3
0  0  1               A1
0  1  0
0  1  1
1  x  x
1  x  x
1  x  x
1  x  x
-> wahrheitstabelle -> minimierung der logischen

b0 (letzterWert == x) ? false noch nicht fertig
                        true is fertig
              
b1 (haufchen mod 2 == 0) ? false is ungerade
                           true is gerade

b2 (aktuellLaengsteUngerade < haufchen) (nur wenn ungerade)

b3 (xs == [])  false
               true
b4 (aktuellLaengsteUngerade == 0)
---------------------------
== Tabelle ==
|  (letztewert == x) && (xs /= []) = palindromAux ( - , - ,-,(haeufigkeitsWert+1),xs  
|  (letztewert == x) && (xs == []) && (haufchen mod 2 == 0) && (haeufchen +1 > aktellLaengsteUngerade) = haeufchen + 1 + pali
|  (letztewert == x) && (xs == []) && (haufchen mod 2 == 0) && (haeufchen +1 <= aktellLaengsteUngerade) = aktellLaengsteUngerade + pali
|  (letztewert == x) && (xs == []) && (haufchen mod 2 != 0) = aktellLaengsteUngerade + hauefchen +1 + pali 
|  (letztewert /=x) && (haufchen mod 2 == 0) && (xs /= [])  = palindromeAux (x, 1, aktuellLaengsteUngerade, laengePaliAkku + haeufigkeits, (xs))
|  (letztewert /=x) && (haufchen mod 2 /= 0) && (haeufchen > aktellLaengsteUngerade) && (xs /= []) = palindromAux (x,1,haeufchen,laengePaliAkku, xs)
|  (letztewert /=x) && (haufchen mod 2 /= 0) && (haeufchen <= aktellLaengsteUngerade) && (xs /= []) = palindromAux (x,1,aktuellLaengsteUngerade,laengePaliAkku,xs)
|  (letztewert /=x) && (haufchen mod 2 == 0) && (xs == []) && (aktuellLaengsteUngerade == 0) = 1 + hauefchen + pali  
|  (letztewert /=x) && (haufchen mod 2 == 0) && (xs == []) && (aktuellLaengsteUngerade /= 0) = aktuellLaengsteUngerade  + hauefchen + pali    
|  (letztewert /=x) && (haufchen mod 2 /= 0) && (xs == []) && (haeufchen > aktellLaengsteUngerade) = hauefchen + pali
|  (letztewert /=x) && (haufchen mod 2 /= 0) && (xs == []) && (haeufchen <= aktellLaengsteUngerade) = aktellLaengsteUngerade + pali 
| otherwise = 12345678
-}

--"aabb ccc c  d:[]"
--"z aabb cccc d:[]"

import Data.Char (ord)
import Data.List

palindromeAux :: (Int ,Int , Int , Int , [Int]) -> Int 
palindromeAux (letzterWert, haufen, laengsteUngerade, paliAkku, (x:xs))
                    | (letzterWert == x) && (xs /= []) = palindromeAux ( x , (haufen+1), laengsteUngerade, paliAkku ,xs)  
                    | (letzterWert == x) && (xs == []) && (haufen `mod` 2 == 0) && (haufen +1 > laengsteUngerade) = haufen + 1 + paliAkku
                    | (letzterWert == x) && (xs == []) && (haufen `mod` 2 == 0) && (haufen +1 <= laengsteUngerade) = laengsteUngerade + paliAkku
                    | (letzterWert == x) && (xs == []) && (haufen `mod` 2 /= 0) = laengsteUngerade + haufen +1 + paliAkku 
                    | (letzterWert /=x) && (haufen `mod` 2 == 0) && (xs /= [])  = palindromeAux (x, 1, laengsteUngerade, paliAkku + haufen, (xs))
                    | (letzterWert /=x) && (haufen `mod` 2 /= 0) && (haufen > laengsteUngerade) && (xs /= []) = palindromeAux (x,1,haufen,paliAkku, xs)
                    | (letzterWert /=x) && (haufen `mod` 2 /= 0) && (haufen <= laengsteUngerade) && (xs /= []) = palindromeAux (x,1,laengsteUngerade,paliAkku,xs)
                    | (letzterWert /=x) && (haufen `mod` 2 == 0) && (xs == []) && (laengsteUngerade == 0) = 1 + haufen + paliAkku  
                    | (letzterWert /=x) && (haufen `mod` 2 == 0) && (xs == []) && (laengsteUngerade /= 0) = laengsteUngerade  + haufen + paliAkku    
                    | (letzterWert /=x) && (haufen `mod` 2 /= 0) && (xs == []) && (haufen > laengsteUngerade) = haufen + paliAkku
                    | (letzterWert /=x) && (haufen `mod` 2 /= 0) && (xs == []) && (haufen <= laengsteUngerade) = laengsteUngerade + paliAkku 
                    | otherwise = 12345678

palindrome :: String -> Int
palindrome [] = 0
palindrome [_] = 1
palindrome (x:xs) = palindromeAux ( (ord x),0,0,0,(sort $ map ord (x:xs)))
