Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlTypes
Imports Microsoft.SqlServer.Server
Imports System.Data.SqlClient
Imports System.Runtime.InteropServices

Partial Public Class StoredProcedures
    <Microsoft.SqlServer.Server.SqlProcedure()> _
    Public Shared Sub PromedioPrecios(<Out()> ByRef value As SqlInt32)

        Using connection As New SqlConnection("context connection=true")
            value = 0
            connection.Open()
            Dim command As New SqlCommand("SELECT Convert(int,AVG(ListPrice)) as Promedio FROM Production.Product", connection)
            Dim reader As SqlDataReader
            reader = command.ExecuteReader()

            reader.Read()
            value = reader.GetSqlInt32(0)
        End Using
    End Sub

    <SqlProcedure(Name:="uspGetVendors")> _
    Public Shared Sub GetVendors(ByVal rating As Integer)
        ' Connect to the context connection.      
        Using conn As New SqlConnection("context connection=true")
            conn.Open()
            Using cmd As New SqlCommand( _
            "SELECT VendorID, AccountNumber, Name " & _
            "FROM Purchasing.Vendor WHERE CreditRating = @rating", _
            conn)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.Add("@rating", SqlDbType.Int).Value = rating
                ' Run the command and send the results directly to the client.      
                SqlContext.Pipe.ExecuteAndSend(cmd)
            End Using
        End Using
    End Sub

    <SqlFunction()> _
    Public Shared Function GetLongDate(ByVal aDateTime As SqlDateTime) As SqlString
        Return aDateTime.Value.ToLongDateString()
    End Function
            
End Class