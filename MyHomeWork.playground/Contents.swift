import UIKit

let starString = "*" //ลองดูว่าประกาศแล้วใช้ร่วมกัน มีผลกับอะไรบ้าง

print("แบบที่ 1 ox")
var vertical = 3
for i in 1...vertical { //1, 2, 3
    
    var setLine = ""
    let stringO = "o"
    let stringX = "x"
    
    setLine += String(repeating: stringX, count: i-1)
    setLine += String(repeating: stringO, count: 1)
    setLine += String(repeating: stringX, count: vertical - i)
    print(setLine)
}
print("แบบที่ 2 สามเหลี่ยมลงพื้น")
let treeHeight = 5
let treeWidth = treeHeight * 2 - 1

for lineNumber in 1...treeHeight {
    
    let stars = 2 * lineNumber - 1
    var line = ""
    
    let spaces = (treeWidth - stars) / 2
    if spaces > 0 {
        line = String(repeating: " ", count: spaces)
    }
    
    line += String(repeating: "*", count: stars)
    print(line)
}
print("แบบที่ 3 สามเหลี่ยมเส้นประ")
let row = 5 //5 แถว
let index = row * 2 - 1 //จำนวนของแต่ละแถว นอก loop 9 ตำแหน่งในแต่ละแถว

for rowNumber in 1...row { //ทำทีละแถว 1,2,3,4,5
    
    var setupLine = ""
    var marker = "*"
    let space = " "//"o"
    
    let markNum = 2 * rowNumber - 1 //จำนวนมาร์คในแต่ละแถว 2*1-1=1, 3, 5, 7, 9
//    print (markNum)
    //เพิ่มช่องว่างข้างใน
    let insideSpace = 2 * rowNumber - 3 //อยากได้ x, 1, 3, 5, x
//    print (2 * 1 - 3, 2 * 4 - 3, 2 * 5 - 3)
//    print (insideSpace)
    let spaces = (index - markNum) / 2 //อยากได้ 4, 3, 2, 1, x0ว่าง
//    print (spaces)
    if spaces > 0 {
        setupLine = String(repeating: space, count: spaces)
    }
    if insideSpace > 0 { //ตัด -1
        if rowNumber == row {
            //marker = String(repeating: marker, count: markNum) //ตัด 7
            marker = String(repeating: marker + space, count: row) //อยากได้ 5
//            print( markNum )
        } else {
            marker = marker + String(repeating: space, count: insideSpace) + marker //1, 3, 5
        }
    }
    setupLine += marker
    print (setupLine)
}
print("แบบที่ 4 สามเหลี่ยมมุมฉาก")
let aRows = 3

for index in 1...aRows {
    
    let firstStarsString = "*"
    var setLines = ""
    
    setLines += String(repeating: firstStarsString, count: index)
    print(setLines)
}
print("แบบที่ 5 สามเหลี่ยมมุมฉากกลับด้าน")
let bRows = 3
for index in 1...bRows {
    
    let spacesString = " "//"o"
    let secondStarsString = "*"
    var setLine = ""
    setLine += String(repeating: spacesString, count: bRows - index)
    setLine += String(repeating: secondStarsString, count: index)
    print(setLine)
}
print("แบบที่ 6 สามเหลี่ยมลงพื้นสามแถว")
var rowHeight = 3

for i in 1...rowHeight {
    
    var spaceString = " "
    var lines = ""
    
    lines += String(repeating: spaceString, count: rowHeight - i)
    lines += String(repeating: starString, count: i + (i-1))
    
    lines += String(repeating: spaceString, count: rowHeight - i)
    print(lines)
}
print("แบบที่ 7 สี่เหลี่ยมทะแยงมุม")


print("แบบที่ 8 แบบผสมเลข")




