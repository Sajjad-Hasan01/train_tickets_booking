<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_ticket.aspx.cs" Inherits="pages_view_ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl" lang="ar">
<head runat="server">
    <title>حفظ التذكرة</title>
    <meta charset="UTF-8"/>
    <meta name="describtion" content="تستطيع شراء تذكرة سفرك على القطار, لكل سكك العراق"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" href="../css/StyleSheet3.css" />
</head>
<body>
    <h1>حجز تذاكر القطار</h1>
    <main>
    <h3>هذه تذكرتك</h3>
    <p>احفظ الكود, لإستخدامه لاحقاً</p>
    <div class="view-ticket-card">
        <form id="view_form" runat="server">
            <asp:Image class="view-image" ImageUrl="../image/qrcode.png" ID="view_image" runat="server"/>
            <asp:Button type="submit" class="download-btn btn" ID="download_btn" runat="server" Text="تحميل الصورة"/>
            <asp:Button type="" class="logout-btn btn" ID="logout_btn" runat="server" Text="تسجيل خروج"/>
        </form>
    </div>
    </main>
    <footer>
        <p>مشروع حوراء حيدر وطيف فاضل</p>
    </footer>
</body>
</html>
