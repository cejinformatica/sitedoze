Imports System.Data
Imports System.Net

Partial Class ucForm_TrabalheConosco
    Inherits System.Web.UI.UserControl

    Dim func As New clsAcessos

    Public Class UtilityObj
        Private _name As String
        Private _value As String
        Public Sub New(ByVal Name As String, ByVal Value As String)
            _name = Name
            _value = Value
        End Sub
        Public Property Name() As String
            Get
                Return _name
            End Get
            Set(ByVal Value As String)
                _name = Name
            End Set
        End Property
        Public Property Value() As String
            Get
                Return (_value)
            End Get
            Set(ByVal Value As String)
                _value = Value
            End Set
        End Property
    End Class


    Protected Sub cmdEnviar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdEnviar.Click

        Call sEnviarEmail()
        Response.Redirect("ConfirmacaoEnvioEmail.aspx")

    End Sub

    Sub sEnviarEmail()

        Dim wCorpo As New StringBuilder
        Dim wControl As Control
        Dim wPortal As New wsCash.wPortal
        Dim ws As New wsCash.wsCash

        ws = func.fRetornaWS()
        wPortal = ws.fCarregarPortal(func.fPortal())

        For Each wControl In pnlFormulario.Controls

            If TypeOf wControl Is TextBox Then
                wCorpo.Append(CType(wControl, TextBox).ID & " = " & CType(wControl, TextBox).Text & "<BR>")
            End If

            If TypeOf wControl Is DropDownList Then
                wCorpo.Append(CType(wControl, DropDownList).ID & " = " & CType(wControl, DropDownList).SelectedValue & "<BR>")
            End If

        Next

        If wCorpo.ToString = "" Then
            wCorpo.Append("TESTE APPEND")
        End If

        wCorpo.Append("<BR><BR>Este e-mail foi enviado do IP: " & Request.UserHostAddress)
        wCorpo.Append("<BR><BR>Este e-mail foi enviado do Portal: " & wPortal.tPortal)

        'Session("wFormularioEmail") = .tEmail
        'Session("wFormularioTitulo") = .tFormulario

        Call func.sEnviaEmail(Session("wFormularioEmail"), Session("wFormularioEmail"), "", "", Session("wFormularioTitulo"), wCorpo.ToString, "", "")
        'Call func.sEnviaEmail("almeida@cej.com.br", "almeida@cej.com.br", "", "", "Teste form dinâmico", "TESTE", "", "")

    End Sub

    Public Sub LoopingControls(ByVal oControl As Control)
        Dim frmCtrl As Control
        Dim oArrayList As ArrayList

        oArrayList = New ArrayList
        For Each frmCtrl In oControl.Controls
            If TypeOf frmCtrl Is TextBox Then
                oArrayList.Add(New UtilityObj(frmCtrl.ID, DirectCast(frmCtrl, TextBox).Text))
            End If
            If frmCtrl.HasControls Then
                LoopingControls(frmCtrl)
            End If
        Next
    End Sub

End Class
