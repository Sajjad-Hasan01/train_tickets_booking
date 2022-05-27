<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="pages_buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl" lang="ar">
<head runat="server">
    <title>شراء تذكرة</title>
    <meta charset="UTF-8"/>
    <meta name="describtion" content="تستطيع شراء تذكرة سفرك على القطار, لكل سكك العراق"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0"/>
    <link rel="stylesheet" href="../css/StyleSheet2.css" />
</head>

<body>    
    <h1>حجز تذاكر القطار</h1>
    <main>
    <h3>شراء تذكرة</h3>
    <p>إختر ما يناسبك</p>
    <div class="sign-card">
    <form id="buy_form" runat="server">
        <label for="email_text">الأسم :</label> <asp:TextBox class="text-box" ID="name_text" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator class="validator" ID="email_required" runat="server" ErrorMessage="هذا الحقل مطلوب" ForeColor="Blue" ControlToValidate="name_text"></asp:RequiredFieldValidator>
        <br />
        <label for="start_station_choice">محطة البداية :</label>
        <asp:DropDownList class="city-choice" ID="start_station_choice" runat="server">
            <asp:ListItem Selected="True" Value="0" Text="المحافظة"></asp:ListItem>
            <asp:ListItem Selected="False" Value="1" Text="بغداد"></asp:ListItem>
            <asp:ListItem Selected="False" Value="2" Text="بابل"></asp:ListItem>
            <asp:ListItem Selected="False" Value="3" Text="القادسية"></asp:ListItem>
            <asp:ListItem Selected="False" Value="4" Text="المثنى"></asp:ListItem>
            <asp:ListItem Selected="False" Value="5" Text="ذي قار"></asp:ListItem>
            <asp:ListItem Selected="False" Value="6" Text="البصرة"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <label for="end_station_choice">محطة النهاية :</label>
        <asp:DropDownList class="city-choice" ID="end_station_choice" runat="server">
            <asp:ListItem Selected="True" Value="0" Text="المحافظة"></asp:ListItem>
            <asp:ListItem Selected="False" Value="1" Text="بغداد"></asp:ListItem>
            <asp:ListItem Selected="False" Value="2" Text="بابل"></asp:ListItem>
            <asp:ListItem Selected="False" Value="3" Text="القادسية"></asp:ListItem>
            <asp:ListItem Selected="False" Value="4" Text="المثنى"></asp:ListItem>
            <asp:ListItem Selected="False" Value="5" Text="ذي قار"></asp:ListItem>
            <asp:ListItem Selected="False" Value="6" Text="البصرة"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <label for="date_textbox">التاريخ :</label> <asp:TextBox class="text-box" ID="date_textbox" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator class="validator" ID="date_required" runat="server" ErrorMessage="هذا الحقل مطلوب" ForeColor="Blue" ControlToValidate="date_textbox"></asp:RequiredFieldValidator>
        <br />
        <label for="time_textbox">الوقت :</label> <asp:TextBox class="text-box" ID="time_textbox" runat="server" TextMode="Time"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator class="validator" ID="time_required" runat="server" ErrorMessage="هذا الحقل مطلوب" ForeColor="Blue" ControlToValidate="time_textbox"></asp:RequiredFieldValidator>
        <br />
        <label for="datetime_textbox">العدد :</label> <asp:TextBox class="text-box" ID="number_text" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator class="validator" ID="number_required" runat="server" ErrorMessage="هذا الحقل مطلوب" ForeColor="Blue" ControlToValidate="number_text"></asp:RequiredFieldValidator>
        <asp:RangeValidator class="validator" ID="number_range" runat="server" ForeColor="Blue" ErrorMessage="يمكنك شراء 4 تذاكر كحد أقصى" ControlToValidate="number_text" MaximumValue="4" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <br />
        <label for="ticket_type_choice" class="type-label">نوع التذكرة :</label>
        <asp:RadioButtonList ID="ticket_type_choice" runat="server" class="ticket_type_choice">
            <asp:ListItem class="option" Value="1" Text="مقعد"></asp:ListItem>
            <asp:ListItem class="option" Value="2" Text="سرير نوم"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <label for="ticket_class_choice" class="type-label">نوع التذكرة :</label>
        <asp:RadioButtonList ID="ticket_class_choice" runat="server" class="ticket_type_choice">
            <asp:ListItem class="option" Value="1" Text="درجة أولى"></asp:ListItem>
            <asp:ListItem class="option" Value="2" Text="سياحي"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <label for="price">سعر التذكرة :</label><asp:Label class="view-label" id="view_ticket_price" runat="server" Text="-----"></asp:Label>
        <br />
        <label for="price">السعر الكلي :</label><asp:Label class="view-label" id="view_total_price" runat="server" Text="-----"></asp:Label>
        <br />
        <asp:Button type="submit" class="buy_btn btn" ID="buy_btn" runat="server" Text="شراء"/>
        <button type="reset" class="clear_btn btn" text="حذف البيانات">حذف البيانات</button>
    </form>
    </div>
    </main>
    <footer>
        <p>مشروع حوراء حيدر وطيف فاضل</p>
    </footer>
</body>
</html>
