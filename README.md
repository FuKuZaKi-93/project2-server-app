# テクノロジー（藤原）第2回Webアプリ制作課題

## サンプル課題(Ruby): Nokogiriを用いて表を抜き出す

課題の詳細: [第2回 サーバサイドスクリプトの制作 - テクノロジー（藤原）2017年度資料](https://kd-site2017.firebaseapp.com/project2-server-app/)

## 以下、自分で記入してください。（レポートの代わりとします）

`（ここに貼り付ける）` や `（ここに書く）` の部分を自分で削除して、そこに自分で記入してください。

----------------------

## 実行コマンドと結果

Cloud9のBash(端末)で`ruby`コマンドを実行し、そのコマンドと結果をコピーして貼り付けてください。

- 課題の要件（表を抜き出す）が満たされているかどうかのチェックです
- 他のコマンド(`git`, `bundle`, `ls`など)は不要です

```
---2017/10/25---
fukuzaki93:~/workspace/project2-server-app (master) $ ruby get_table.rb 
   Version 
   Code name 
   Release date 
   End of life date 

   
   Bullseye 
   
   

   
   Buster 
   
   

   9 
   Stretch 
   June 17th 2017 
   approx. 2020 (full) / approx. 2022 (LTS)  

   8 
   Jessie   
   April 25th 2015    
   ~June 6th 2018 (full) / ~June 6th 2020 (LTS) 

   7 
   Wheezy   
   May 4th 2013       
   April 26th 2016 (full) / May 2018 (LTS) 

   6.0 
   Squeeze 
   February 6th 2011 
   May 31st 2014 (full) / February 29th 2016 (LTS) 

   5.0 
   Lenny     
   February 14th 2009 
   February 6th 2012 

   4.0 
   Etch       
   Apr 8th 2007       
   February 15th 2010 

   3.1 
   Sarge     
   June 6th 2005      
   March 31st 2008 

   3.0 
   Woody     
   July 19th 2002     
   June 30th 2006  

   2.2 
   Potato   
   August 15th 2000   
   June 30th 2003 

   2.1 
   Slink     
   March 9th 1999     
   September 30th 2000 (full) / October 30th 2000 (limited) 

   2.0 
   Hamm       
   July 24th 1998     
   - 

   1.3 
   Bo           
   July 2nd 1997      
   - 

   1.2 
   Rex         
   December 12th 1996 
   - 

   1.1 
   Buzz       
   June 17th 1996     
   - 

   0.93R6 
                          
   October 26 1995    
   - 

   0.93R5 
                          
   March 1995         
   - 

   0.91   
                          
   January 1994 
   - 

    Version 
   Code name 
   Freeze length 
   Time from previous release 
   Time from next release up to EOL 
   Total lifetime 

   1.2 
   Rex 
   
   178 days 

   1.3 
   Bo 
   
   175 days 

   2.0 
   Hamm 
   171 days 
   414 days 

   2.1 
   Slink 
   125 days 
   228 days 
   76 days 
   601 days 

   2.2 
   Potato 
   212 days 
   525 days 
   346 days 
   1049 days 

   3.0 
   Woody 
   383 days 
   703 days 
   389 days 
   1442 days 

   3.1 
   Sarge 
   34 days 
   1053 days 
   357 days 
   1028 days 

   4.0 
   Etch 
   258 days 
   671 days 
   366 days 
   1044 days 

   5.0 
   Lenny
   202 days 
   678 days 
   365 days 
   1087 days 

   6.0 
   Squeeze 
   184 days 
   722 days 
   391 days 

   7.0 
   Wheezy 
   308 days 
   818 days 
   367 days 

   8.0 
   Jessie 
   171 days 
   721 days 

   9.0 
   Stretch 
   224 days 
   784 days 
---ここまで2017/10/25---

---2017/11/01---
         Version                 Code name              Release date           End of life date     
                                 Bullseye                                                           
                                  Buster                                                            
            9                     Stretch              June 17th 2017       approx. 2020 (full) / approx. 2022 (LTS)  
            8                    Jessie              April 25th 2015        ~June 6th 2018 (full) / ~June 6th 2020 (LTS) 
            7                    Wheezy              May 4th 2013           April 26th 2016 (full) / May 2018 (LTS) 
           6.0                    Squeeze             February 6th 2011     May 31st 2014 (full) / February 29th 2016 (LTS) 
           5.0                   Lenny               February 14th 2009        February 6th 2012    
           4.0                  Etch                 Apr 8th 2007             February 15th 2010    
           3.1                   Sarge               June 6th 2005              March 31st 2008     
           3.0                   Woody               July 19th 2002             June 30th 2006      
           2.2                   Potato              August 15th 2000           June 30th 2003      
           2.1                   Slink               March 9th 1999         September 30th 2000 (full) / October 30th 2000 (limited) 
           2.0                  Hamm                 July 24th 1998                    -            
           1.3                 Bo                    July 2nd 1997                     -            
           1.2                  Rex                  December 12th 1996                -            
           1.1                  Buzz                 June 17th 1996                    -            
         0.93R6                                      October 26 1995                   -            
         0.93R5                                      March 1995                        -            
         0.91                                           January 1994                   -            
 ---ここまで2017/11/01---
```

## Rubyや課題に関して、難しかったこと・分からなかったこと

tableを抜き出すことは簡単だったが、
tableにidやclassが書かれていおらず、
さらに親要素がid等が書かれているところまでさかのぼると
共通していたためどちらも取られてしまった。
この場合の個別指定の仕方がわからなかった。

## Rubyを触ってみた・課題をやってみた感想

今日触った限りでは書きやすく、日本人が作ったんだなというのが伝わってくる感じだった。

