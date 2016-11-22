Use Store
SELECT TITLE,CASE
When GroupID<3 Then 'G1' Else 'G2'
End As 'GroupType'
From Product