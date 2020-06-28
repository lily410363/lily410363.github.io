data=read.csv('各縣市前五名.csv')

# 選取每個不同縣市

ID=levels(data$TA.COUNTY.w.)
ID
data$TA.COUNTY.w.=as.character(data$TA.COUNTY.w.)
data$TA.TOWN.w.=as.character(data$TA.TOWN.w)

for(i in 1:length(ID)){
  index=data$TA.COUNTY.w.==ID[i]
  TA1=data.frame(data[index,])
  
  TA1$TA1.COUNTY.w.=as.character(TA1$TA.COUNTY.w.)
  TA1$TA1.TOWN.w.=as.character(TA1$TA.TOWN.w.)
  TA=TA1[-6,]
  TA=TA[order(TA$TA.ODD.w.),]
  
  TA$TA.COUNTY.w.=as.character(TA$TA.COUNTY.w.)
  TA$TA.TOWN.w.=as.character(TA$TA.TOWN.w.)
  
  cat('"',TA[i,1],'":',' [[" ' ,TA1[i,2],'","',TA1[6,3],'"],' 
      ,' [" ' ,TA[i,2],'","',TA[6,3],'"],' 
      ,' [" ' ,TA[2,2],'","',TA[5,3],'"],' 
      ,' [" ' ,TA[3,2],'","',TA[4,3],'"],' 
      ,' [" ' ,TA[4,2],'","',TA[3,3],'"],' 
      ,' [" ' ,TA[5,2],'","',TA[2,3],'"]],' 
  )
  
}
i=1
index=data$TA.COUNTY.w.=='苗栗縣'
TA=data.frame(data[index,])
TA=TA[order(TA$TA.ODD.w.),]
TA
cat('"',TA[i,1],'":',' [[" ' ,TA[i,2],'","',TA[6,3],'"],' 
    ,' [" ' ,TA[i,2],'","',TA[6,3],'"],' 
    ,' [" ' ,TA[2,2],'","',TA[5,3],'"],' 
    ,' [" ' ,TA[3,2],'","',TA[4,3],'"],' 
    ,' [" ' ,TA[4,2],'","',TA[3,3],'"],' 
    ,' [" ' ,TA[5,2],'","',TA[2,3],'"]],' )

print(TA)



# 全部一起cat
index=data$TA.COUNTY.w.=='新竹市'
TA=data[index,]
TA
cat('"',TA[i,1],'":',' [" ' ,TA[6,2],'","',TA[6,3],'"],' 
    ,' [" ' ,TA[i,2],'","',TA[i,3],'"],' 
    ,' [" ' ,TA[2,2],'","',TA[2,3],'"],' 
    ,' [" ' ,TA[3,2],'","',TA[3,3],'"],' 
    ,' [" ' ,TA[4,2],'","',TA[4,3],'"],' 
    ,' [" ' ,TA[5,2],'","',TA[5,3],'"]' 
)

for(i in ID){
  print(i)
  index=data$TA.COUNTY.w.==i
  TA=data[index,]
  print(TA)
}


# table.html

data=read.csv('rank10.csv')
data$名單內出現的所有鄉里=as.character(data$名單內出現的所有鄉里)
data$X96=as.character(data$X96)
data$X97=as.character(data$X97)
data$X98=as.character(data$X98)
data$X99=as.character(data$X99)
data$X100=as.character(data$X100)
data$X101=as.character(data$X101)
data$X102=as.character(data$X102)
data$X103=as.character(data$X103)
data$X104=as.character(data$X104)
data$X105=as.character(data$X105)
data$X106=as.character(data$X106)
data$X107=as.character(data$X107)
data$X108=as.character(data$X108)
for( i in 1:nrow(data)){
  
    cat('<tr><td>', 
        data[i,1], '</td><td>',
        data[i,2], '</td><td>',
        data[i,3],'</td><td>',
        data[i,4], '</td><td>',
        data[i,5], '</td><td>',
        data[i,6],'</td><td>',
        data[i,7], '</td><td>',
        data[i,8], '</td><td>',
        data[i,9],'</td><td>',
        data[i,10], '</td><td>',
        data[i,11], '</td><td>',
        data[i,12],'</td><td>',
        data[i,13], '</td><td>',
        data[i,14],'</td></tr>')
}


i=1
cat('<tr><td>', 
    data[i,1], '</td><td>',
    data[i,2], '</td><td>',
    data[i,3],'</td><td>',
    data[i,4], '</td><td>',
    data[i,5], '</td><td>',
    data[i,6],'</td><td>',
    data[i,7], '</td><td>',
    data[i,8], '</td><td>',
    data[i,9],'</td><td>',
    data[i,10], '</td><td>',
    data[i,11], '</td><td>',
    data[i,12],'</td><td>',
    data[i,13], '</td><td>',
    data[i,14],'</td>')
}