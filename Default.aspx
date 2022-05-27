<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl" lang="ar">
<head runat="server">
    <title>حجز تذاكر القطار</title>
    <meta charset="UTF-8"/>
    <meta name="describtion" content="تستطيع شراء تذكرة سفرك على القطار, لكل سكك العراق"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" href="./css/StyleSheet.css" />
</head>

<body>
    <h1>حجز تذاكر القطار</h1>
    <main>
    <h3>تسجيل الدخول</h3>
    <p>سجل دخولك الآن, لتتمكن من الشراء</p>
    <div class="sign-card">
    <form id="sign_in_form" runat="server">
        <label for="email_text">البريد الألكتروني :</label> <asp:TextBox class="text-box" ID="email_text" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator class="validator" ID="email_required" runat="server" ErrorMessage="هذا الحقل مطلوب" ForeColor="Blue" ControlToValidate="email_text"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator class="validator" ID="email_expression" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="البريد الألكتروني غير صحيح" ForeColor="Blue" ControlToValidate="email_text"></asp:RegularExpressionValidator>
        <br />
        <label for="password_text">الرمز السري :</label> <asp:TextBox class="text-box" ID="password_text" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator class="validator" ID="password_required" runat="server" ErrorMessage="هذا الحقل مطلوب" ForeColor="Blue" ControlToValidate="password_text"></asp:RequiredFieldValidator>
        <asp:RangeValidator class="validator" ID="password_range" runat="server" ForeColor="Blue" ErrorMessage="حجم الرمز من 6 إلى 18" ControlToValidate="password_text" MaximumValue="18" MinimumValue="6" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        <asp:Button type="submit" class="login-btn" ID="login_btn" runat="server" Text="تسجيل الدخول"/>
    </form>
    </div>
    </main>
</body>
</html>
