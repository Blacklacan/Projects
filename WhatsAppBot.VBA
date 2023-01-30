Sub WhatsApp()
Dim Contact As String
Dim Message As String
Dim Obj As New DataObject

For Each Cell In Range("Tbl[Contact]")

Contact = Cell.Value
Message = Cell.Offset(0, 1).Value

Obj.SetText Message
Obj.PutInClipboard

ActiveWorkbook.FollowHyperlink "https://wa.me/" & Contact

Application.Wait (Now + TimeValue("00:00:10"))
Call SendKeys("^v", True)

Application.Wait (Now + TimeValue("00:00:04"))
Call SendKeys("~", True)
Application.Wait (Now + TimeValue("00:00:04"))
Next

MsgBox "Done!"

End Sub


Sub ClearContents()

Range("Tbl").EntireRow.Delete

End Sub
