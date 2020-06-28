# Introducion

嗨，歡迎進入老化的世界 !

*統計數據顯示，

*台灣的老年人口已在2018年超過14%，進入超高齡社會，*

*高齡人口將在2065超過20%，老化速度超越日本。*

*用數據與地圖，了解台灣老化現況*

Hi, here is my final project of fronted programing.

This Aging Population Map websites consists of 2 main pages, the Aged Population Density Map & The 10th Oldest Villages.

(1) 台灣人口老化地圖 Aged Population Density Map 

The choropleth shows the density of Aged Population in the unit of village. 

You can see the average of each county and the fifth top village name and data by clicking the area on the map.

(2) 歷年台灣最老鄉鎮排名 The 10th Oldest Villages 

The line chart shows the ranking of the 10th oldest villages in Taiwan from 96~108 year.

The table belows is the percentage data of all the villages that have ever be in the ranking.




# 特點 & 亮點

*起始頁: 有意境的起始畫面，用文字簡述台灣老化現況，邀請大家用地圖與數據來認識老化的台灣，並附上兩個頁面的按鈕。

*地圖頁: 以村里為單位繪製的面量圖，能清晰看到全台老化區域分布，以及各縣市輪廓。用滑鼠hover可以顯示縣市紫色輪廓，引導使用者點擊。

*打字機特效: 在地圖頁載入後，「點選各縣市查看老人比例」字樣會像打字機的方式漸漸浮現，增加網頁動態感。

# 使用技術

1. **R語言**/ 繪製老年人口密度面量圖。

使用政府開式資料的Popn_TW 圖資以及各年齡人口資料，以R語言資料分析並繪製面量圖。

此外，在*歷年台灣最老鄉鎮排名(table.html)*中的表格資料，亦是使用R語言將 csv資料印出HTML table格式的語法

2. **SVG** / 製作各縣市按鈕：

於 https://www.drawsvg.org/drawsvg.html 網頁中匯入R輸出的台灣地圖，用手動方式描繪出台灣各縣市輪廓。

3. **jQuery** 

判斷使用者點擊的縣市，找出相對應的資料並顯示於指定位置。

4. **HTML**

總共製作了3個頁面，分別是 *起始頁(hello.html)*、*台灣人口老化地圖(index.html)*、*歷年台灣最老鄉鎮排名(table.html)*

5. **css**

*設計文字、按鈕、版面等樣式

*製作打字機的特效



# 遺珠之憾 

*原本


# 致謝







