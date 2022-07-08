Public Sub ChangefontColorForExcel()
    Set TextRange = Range("A3:E11")
            partOfText = "MS Excel Basic (1:00 - 4:00)"
            fontColorRed = 3
            For Each part In TextRange
                lenOfPart = Len(part)
                lenPartOfText = Len(partOfText)
                For i = 1 To lenOfPart
                    tempStr = Mid(part, i, lenPartOfText)
                    If tempStr = partOfText Then
                        part.Characters(Start:=i, Length:=lenPartOfText).Font.ColorIndex = fontColorRed
                    End If
                Next i
        Next part
    Set TextRange = Range("A3:E11")
            partOfText = "MS Excel Intermediate (1:00 - 4:00)"
            fontColorRed = 3
            For Each part In TextRange
                lenOfPart = Len(part)
                lenPartOfText = Len(partOfText)
                For i = 1 To lenOfPart
                    tempStr = Mid(part, i, lenPartOfText)
                    If tempStr = partOfText Then
                        part.Characters(Start:=i, Length:=lenPartOfText).Font.ColorIndex = fontColorPurple
                    End If
                Next i
        Next part
    Set TextRange = Range("A3:E11")
            partOfText = "MS Excel Adv(1:00 - 4:00)"
            fontColorRed = 3
            For Each part In TextRange
                lenOfPart = Len(part)
                lenPartOfText = Len(partOfText)
                For i = 1 To lenOfPart
                    tempStr = Mid(part, i, lenPartOfText)
                    If tempStr = partOfText Then
                        part.Characters(Start:=i, Length:=lenPartOfText).Font.ColorIndex = fontColorRed
                    End If
                Next i
        Next part
End Sub
Public Sub ChangefontColorForWord()
        Set TextRange = Range("A3:E11")
        partOfText = "MS Word Basic (9:00 - 12:00)"
        fontColorPurple = 11
        For Each part In TextRange
            lenOfPart = Len(part)
            lenPartOfText = Len(partOfText)
            For i = 1 To lenOfPart
                tempStr = Mid(part, i, lenPartOfText)
                If tempStr = partOfText Then
                    part.Characters(Start:=i, Length:=lenPartOfText).Font.ColorIndex = fontColorPurple
                End If
            Next i
    Next part
Set TextRange = Range("A3:E11")
        partOfText = "MS Word Intermediate (9:00-12:00)"
        fontColorPurple = 11
        For Each part In TextRange
            lenOfPart = Len(part)
            lenPartOfText = Len(partOfText)
            For i = 1 To lenOfPart
                tempStr = Mid(part, i, lenPartOfText)
                If tempStr = partOfText Then
                    part.Characters(Start:=i, Length:=lenPartOfText).Font.ColorIndex = fontColorPurple
                End If
            Next i
    Next part
Set TextRange = Range("A3:E11")
        partOfText = "MS Word Adv (9:00 - 12:00)"
        fontColorPurple = 11
        For Each part In TextRange
            lenOfPart = Len(part)
            lenPartOfText = Len(partOfText)
            For i = 1 To lenOfPart
                tempStr = Mid(part, i, lenPartOfText)
                If tempStr = partOfText Then
                    part.Characters(Start:=i, Length:=lenPartOfText).Font.ColorIndex = fontColorPurple
                End If
            Next i
    Next part
End Sub
Public Sub ChangefontColorForPowerPoint()
Set TextRange = Range("A3:E12")
        partOfText = "MS PP Basic (9:00-12:00)"
        fontColorBlue = 5
        For Each part In TextRange
            lenOfPart = Len(part)
            lenPartOfText = Len(partOfText)
            For i = 1 To lenOfPart
                tempStr = Mid(part, i, lenPartOfText)
                If tempStr = partOfText Then
                    part.Characters(Start:=i, Length:=lenPartOfText).Font.ColorIndex = fontColorBlue
                End If
            Next i
    Next part
End Sub
