

# begin the table
print("<table>")

# column headers
print("<th>")
print("<td>County</td>")
print("<td>96</td>")
print("<td>97</td>")
print("<td>98</td>")
print("<td>99</td>")
print("<td>100</td>")
print("<td>101</td>")
print("<td>102</td>")
print("<td>103</td>")
print("<td>104</td>")
print("<td>105</td>")
print("<td>106</td>")
print("<td>107</td>")
print("<td>108</td>")
print("</th>")


import csv
infile=csv.reader("rank10.csv", 'r') 
for line in infile:
    print(line)

for line in infile:
    row = line
    y96 = row[0]
    y97 = row[1]
    y98 = row[2]
    y99 = row[3]
    y100 = row[4]
    y101 = row[5]
    y102 = row[6]
    y103 = row[7]
    y104 = row[8]
    y105 = row[9]
    y106 = row[10]
    y107 = row[11]
    y108 = row[12]

    if y96 == '0.305351284':
        print("<tr>")
        print("<td>%s</td>" % y97)
        print("<td>%s</td>" % y98)
        print("<td>%s</td>" % y99)
        print("<td>%s</td>" % y100)
        print("<td>%s</td>" % y101)
        print("<td>%s</td>" % y102)
        print("<td>%s</td>" % y103)
        print("<td>%s</td>" % y104)
        print("<td>%s</td>" % y105)
        print("<td>%s</td>" % y106)
        print("<td>%s</td>" % y107)
        print("<td>%s</td>" % y108)
        print("</tr>")

# end the table
print("</table>")