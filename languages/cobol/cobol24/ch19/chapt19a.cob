000010 @OPTIONS MAIN,TEST
000020 Identification Division.
000030 Program-Id.  Chapt19a.
000031* Simple Report
000043 Environment Division.
000050 Configuration Section.
000055 Source-Computer.  IBM-PC.
000056 Object-Computer.  IBM-PC.
000061 Input-Output  Section.
000062 File-Control.
000063     Select Report-File Assign To Printer.
000066     Select Dealer-File Assign To "Dealer.Dat"
000067         Organization Indexed
000068         Access Sequential
000069         Record Key Dealer-Number
000070         Alternate Record Key Dealer-Name
000071         File Status Dealer-Status.
000076 Data Division.
000077 File Section.
000078 Fd  Report-File.
000079 01  Report-Record Pic X(80).
000093 Fd  Dealer-File.
000094 01  Dealer-Record.
000095     03  Dealer-Number         Pic X(8).
000096     03  Dealer-Name.
000097         05  Last-Name   Pic X(25).
000098         05  First-Name  Pic X(15).
000099         05  Middle-Name Pic X(10).
000100     03  Address-Line-1      Pic X(50).
000101     03  Address-Line-2      Pic X(50).
000102     03  City                Pic X(40).
000103     03  State-Or-Country    Pic X(20).
000104     03  Postal-Code         Pic X(15).
000105     03  Home-Phone          Pic X(20).
000106     03  Work-Phone          Pic X(20).
000107     03  Other-Phone         Pic X(20).
000108     03  Start-Date          Pic 9(8).
000109     03  Last-Rent-Paid-Date Pic 9(8).
000110     03  Next-Rent-Due-Date  Pic 9(8).
000111     03  Rent-Amount         Pic 9(4)v99.
000112     03  Consignment-Percent Pic 9(3).
000113     03  Last-Sold-Amount    Pic S9(7)v99.
000114     03  Last-Sold-Date      Pic 9(8).
000115     03  Sold-To-Date        Pic S9(7)v99.
000116     03  Commission-To-Date  Pic S9(7)v99.
000117     03  Filler              Pic X(15).
000144 Working-Storage Section.
000206 01  Dealer-Status           Pic XX Value Zeros.
000207     88  Dealer-Success  Value "00" Thru "09".
000209 01  Heading-Line-1.
000210     03  Filler      Pic X(12) Value "Created by:".
000211     03  Filler      Pic X(8)  Value "CHAPT19A".
000212     03  Filler      Pic X(11) Value Spaces.
000213     03  Filler      Pic X(23) Value "Dealer File Rent Report".
000214     03  Filler      Pic X(10) Value Spaces.
000215     03  Filler      Pic X(5)  Value "Page".
000216     03  Page-No     Pic Z(4)9 Value Zeros.
000217 01  Heading-Line-2.
000218     03  Filler      Pic X(12) Value "Created on:".
000219     03  Date-MM     Pic 99.
000220     03  Filler      Pic X     Value "/".
000221     03  Date-DD     Pic 99.
000222     03  Filler      Pic X     Value "/".
000223     03  Date-YY     Pic 99.
000224 01  Heading-Line-3.
000225     03  Filler      Pic X(12) Value "At:".
000226     03  Time-HH     Pic 99.
000227     03  Filler      Pic X     Value ":".
000228     03  Time-MM     Pic 99.
000229     03  Filler      Pic X     Value ":".
000230     03  Time-SS     Pic 99.
000231 01  Heading-Line-4.
000232     03  Filler      Pic X(41) Value Spaces.
000233     03  Filler      Pic X(27) Value "Last Rent  Next Rent".
000234     03  Filler      Pic X(4)  Value "Rent".
000235 01  Heading-Line-5.
000236     03  Filler   Pic X(44) Value "Name".
000237     03  Filler   Pic X(29) Value "Paid       Due         Amount".
000238 01  Detail-Line.
000239     03  Detail-Name         Pic X(40)       Value Spaces.
000240     03  Filler              Pic X           Value Spaces.
000241     03  Last-Rent-Paid-Date Pic 99/99/9999.
000242     03  Filler              Pic X           Value Spaces.
000243     03  Next-Rent-Due-Date  Pic 99/99/9999.
000244     03  Filler              Pic X           Value Spaces.
000245     03  Rent-Amount         Pic $$$,$$$.99.
000246 01  Line-Count           Pic 99          Value 99.
000247 01  Page-Count           Pic 9(4)        Value Zeros.
000248 01  Max-Lines            Pic 99          Value 60.
000249 01  Date-And-Time-Area.
000250     03  Work-Date            Pic 9(6).
000251     03  Work-Date-X          Redefines Work-Date.
000252         05  Date-YY          Pic 99.
000253         05  Date-MM          Pic 99.
000254         05  Date-DD          Pic 99.
000255     03  Work-Time            Pic 9(8).
000256     03  Work-Time-X          Redefines Work-Time.
000257         05  Time-HH          Pic 99.
000258         05  Time-MM          Pic 99.
000259         05  Time-SS          Pic 99.
000260         05  Filler           Pic XX.
000261
000262 Procedure Division.
000263 Declaratives.
000264 Dealer-File-Error Section.
000265     Use After Standard Error Procedure On Dealer-File
000266     .
000267 Dealer-Error-Paragraph.
000268     Display "Error on Dealer File " Dealer-Status
000269     .
000270 End Declaratives.
000271 Chapt19a-Start.
000272     Display "Begin Process Chapt19a"
000273     Perform Open-Files
000274      If Dealer-Success
000275        Perform Fill-Initial-Headings
000276        Perform Start-Alternate-Key
000277        Perform Process-File Until Not Dealer-Success
000278        Perform Close-Files
000279     End-If
000280     Stop Run.
000281 Start-Alternate-Key.
000282     Move Low-Values To Dealer-Name
000283     Start Dealer-File Key Not < Dealer-Name
000284     .
000285 Process-File.
000286     Read Dealer-File
000287          At End Continue
000288          Not At End
000289             Perform Print-This-Record
000290     End-Read
000291     .
000292 Print-This-Record.
000293     Perform Format-Name
000294     Move Corresponding Dealer-Record To Detail-Line
000295     If Line-Count >= Max-Lines
000296        Perform Heading-Routine
000297     End-If
000298     Write Report-Record From Detail-Line After 1
000299     Add 1 To Line-Count
000301     .
000302 Heading-Routine.
000303     Add 1 To Page-Count
000304     Move Page-Count To Page-No
000305     If Page-Count = 1
000306        Write Report-Record From Heading-Line-1 After Zero
000307     Else
000308        Write Report-Record From Heading-Line-1 After Page
000309     End-If
000310     Write Report-Record From Heading-Line-2 After 1
000311     Write Report-Record From Heading-Line-3 After 1
000312     Write Report-Record From Heading-Line-4 After 2
000313     Write Report-Record From Heading-Line-5 After 1
000314     Write Report-Record From Heading-Line-5 Before 2
000315     Move 7 To Line-Count
000316     .
000317 Format-Name.
000318     Move Spaces To Detail-Name
000319     String First-Name  Delimited By Space
000320            " "         Delimited By Size
000321            Middle-Name Delimited By Space
000322            " "         Delimited By Size
000323            Last-Name   Delimited By Space
000324            Into Detail-Name
000325     End-String
000326     .
000327 Fill-Initial-Headings.
000328     Accept Work-Date From Date
000329     Accept Work-Time From Time
000330     Move Corresponding Work-Date-X To
000331                        Heading-Line-2
000332     Move Corresponding Work-Time-X To
000333                        Heading-Line-3
000334     .
000335 Open-Files.
000336     Open Output Report-File
000337           Input Dealer-File
000338     .
000339 Close-Files.
000340     Close Report-File
000341           Dealer-File
000342     .