<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Seat_Booking._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        body{
            background-image: url('https://github.com/Kannan-Sureshsasi/Calculator/assets/138990724/b1570d82-773d-40bd-86d7-09de1af59e75');
            background-repeat:no-repeat;
            background-size:cover;
        }
       .auto-style1 {
           margin-bottom: 1px;
       }
       
       .auto-style2 {
            background-image: url('https://github.com/Practice-Here/Calculator/assets/140873521/b2d630ef-1265-4410-8b83-14ac5364db5c');
            background-size: auto;
            position: absolute;
            top: 14%;
            left: 43%;
            transform: translate(-50%, -50%);
            width: 842px;
            height: 131px;
            margin-right: 0px;
        }
    </style>

    <asp:Label ID="Label46" runat="server" Width="63px" Height="16px"></asp:Label>
    <asp:Button ID="showPopupButton" runat="server" Text="Choose Location" OnClick="showPopupButton_Click" BorderStyle="Solid" Font-Bold="true" BorderColor="#000000" />
    <asp:Panel ID="popupPanel" runat="server" Visible="false" CssClass="auto-style2">
        <asp:Label ID="Label36" runat="server" Width="368px" Height="16px"></asp:Label>
        <asp:Label runat="server" ID="heading" Text="Available Shows!" Font-Bold="true"></asp:Label><br />
        <asp:Label ID="Label37" runat="server" Width="39px" Height="16px"></asp:Label>
        <asp:HyperLink ID="MumbaiLink" runat="server" NavigateUrl="https://en.wikipedia.org/wiki/List_of_cinemas_in_Mumbai">
            <asp:Image ID="MumbaiImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/a3b17b62-eee8-4a39-890b-c5a63e2d3587" />
        </asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="DelhiLink" runat="server" NavigateUrl="https://en.wikipedia.org/wiki/List_of_cinemas_in_Delhi">
                <asp:Image ID="DelhiImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/6c64ec29-049e-4155-bf48-61ad0a721be1" />
            </asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="PuneLink" runat="server" NavigateUrl="https://www.tripadvisor.in/Attractions-g297654-Activities-c56-t97-Pune_Pune_District_Maharashtra.html">
                <asp:Image ID="PuneImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/2943338b-5387-42f8-8bee-e2095cb1bf46" />
            </asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="ChennaiLink" runat="server" NavigateUrl="https://www.tamilagam.in/theatres-chennai.html">
                <asp:Image ID="ChennaiImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/e2710396-d896-40ac-9bb9-debac646d1d2" />
            </asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="BengaluruLink" runat="server" NavigateUrl="https://www.tripadvisor.in/Attractions-g297628-Activities-c56-t97-Bengaluru_Bangalore_District_Karnataka.html">
                <asp:Image ID="BengaluruImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/e545590f-dfff-4944-bbb8-b10fca613180" />
            </asp:HyperLink>&nbsp;&nbsp;
           <asp:HyperLink ID="KolkataLink" runat="server" NavigateUrl="https://en.wikipedia.org/wiki/List_of_cinemas_in_Kolkata">
               <asp:Image ID="KolkataImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/adf583b5-144f-46f2-aeee-0bf4babda122" />
           </asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="KeralaLink" runat="server" NavigateUrl="https://www.tripadvisor.in/Attractions-g297631-Activities-c56-t97-Kerala.html">
                <asp:Image ID="KeralaImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/37d29e8a-35e2-46d2-ae12-9de81cc666ee" />
            </asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="HyderabadLink" runat="server" NavigateUrl="https://www.tripadvisor.in/Attractions-g297586-Activities-c56-t97-Hyderabad_Hyderabad_District_Telangana.html">
                <asp:Image ID="HyderabadImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/3476f8d0-9352-4d89-b1e2-28666671634e" />
            </asp:HyperLink><br />

        <asp:Label ID="Label38" runat="server" Width="48px" Height="10px"></asp:Label>
        <asp:Literal ID="Mumbaitxt" runat="server" Text="<b>Mumbai</b>" />
        <asp:Label ID="Label39" runat="server" Width="42px"></asp:Label>
        <asp:Literal ID="Delhitxt" runat="server" Text="<b>Delhi</b>" />
        <asp:Label ID="Label40" runat="server" Width="50px"></asp:Label>
        <asp:Literal ID="Punetxt" runat="server" Text="<b>Pune</b>" />
        <asp:Label ID="Label41" runat="server" Width="43px"></asp:Label>
        <asp:Literal ID="Chennaitxt" runat="server" Text="<b>Chennai</b>" />
        <asp:Label ID="Label42" runat="server" Width="22px"></asp:Label>
        <asp:Literal ID="Bengalurutxt" runat="server" Text="<b>Bengaluru</b>" />
        <asp:Label ID="Label43" runat="server" Width="19px"></asp:Label>
        <asp:Literal ID="Kolkatatxt" runat="server" Text="<b>Kolkata</b>" />
        <asp:Label ID="Label44" runat="server" Width="37px"></asp:Label>
        <asp:Literal ID="Keralatxt" runat="server" Text="<b>Kerala</b>" />
        <asp:Label ID="Label45" runat="server" Width="29px"></asp:Label>
        <asp:Literal ID="Hyderabadtxt" runat="server" Text="<b>Hyderabad</b>" />
        <br />
        <asp:Button ID="closeButton" runat="server" Text="Close" OnClick="closeButton_Click" BorderStyle="Solid" Font-Bold="true" BorderColor="#000000"/>
    </asp:Panel><br />
    <asp:Label ID="Label34" runat="server" Width="527px"></asp:Label>
    <asp:Label ID="titleLabel" runat="server" Text="Select a movie:" CssClass="movie-label" ForeColor="Black" Font-Bold="true"></asp:Label>
    <asp:Label ID="Label35" runat="server" Width="16px" Height="16px"></asp:Label>
    <asp:DropDownList ID="MovieDropDown" runat="server" Font-Bold="true" AutoPostBack="true" OnSelectedIndexChanged="MovieDropDown_SelectedIndexChanged">
        <asp:ListItem Text="Select Here!"></asp:ListItem>
        <asp:ListItem Text="Movie1 (RS.500)" Value="220"></asp:ListItem>
        <asp:ListItem Text="Movie2 (RS.300)" Value="150"></asp:ListItem>
        <asp:ListItem Text="Movie3 (RS.450)" Value="170"></asp:ListItem>
        <asp:ListItem Text="Movie4 (RS.600)" Value="200"></asp:ListItem></asp:DropDownList>
    <asp:Label ID="Label30" runat="server" Width="1360px" Height="29px" CssClass="auto-style1"></asp:Label><br />
    <asp:Label ID="Label29" runat="server" Width="163px"></asp:Label>
    <asp:Image ID="ImgScreen" runat="server" ImageUrl="https://github.com/Kannan-Sureshsasi/Calculator/assets/138990724/2de67751-0dc9-4f13-9c58-3553fcfe05be" Width="548px" Height="73px" /><br />
    <asp:Label ID="Label31" runat="server" Width="1366px"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Width="202px" ></asp:Label>
    <asp:Label ID="Label2" runat="server" Width="101px" Text="SILVER :" Font-Bold="True" ForeColor="#CC33FF" Font-Size="Large" Height="22px" ></asp:Label>
    <asp:Label ID="Label7" runat="server" Width="78px" Text="150rs" Font-Italic="True" ForeColor="#1b3358" Font-Size="Large" Height="29px" Font-Bold="true" ></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Width="214px"></asp:Label>
    <asp:Button ID="btn1" runat="server" Text="A 1" OnClick="btn1_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID="btn2" runat="server" Text="A 2" OnClick="btn2_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID="btn3" runat="server" Text="A 3" OnClick="btn3_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000"  />
    <asp:Button ID="btn4" runat="server" Text="A 4" OnClick="btn4_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000"/>
    <asp:Button ID="btn5" runat="server" Text="A 5" OnClick="btn5_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="bt6" runat="server" Text="A 6" OnClick="bt6_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID="btn7" runat="server" Text="A 7" OnClick="btn7_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID="bt8" runat="server" Text="A 8" OnClick="bt8_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID="btn9" runat="server" Text="A 9" OnClick="btn9_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID="btn10" runat="server" Text="A10" OnClick="btn10_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />

    <br />
    <asp:Label ID="Label4" runat="server" Width="224px"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" Width="212px"></asp:Label>
    <asp:Button ID ="btn11" runat="server" Text="A11" OnClick="btn11_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn12" runat="server" Text="A12" OnClick="btn12_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn13" runat="server" Text="A13" OnClick="btn13_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn14" runat="server" Text="A14" OnClick="btn14_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn15" runat="server" Text="A15" OnClick="btn15_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID ="btn16" runat="server" Text="A16" OnClick="btn16_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn17" runat="server" Text="A17" OnClick="btn17_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn18" runat="server" Text="A18" OnClick="btn18_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn19" runat="server" Text="A19" OnClick="btn19_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn20" runat="server" Text="A20" OnClick="btn20_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <br />

    <asp:Label ID="Label6" runat="server" Width="164px" Height="21px"></asp:Label>
    <asp:Label ID="Label47" runat="server" Text="PLATINUM :" Font-Bold="True" ForeColor="#CC33FF" Font-Size="Large" Width="134px" Height="27px"></asp:Label>
    <asp:Label ID="Label18" runat="server" Width="59px" Text="250rs" Font-Italic="True" ForeColor="#1b3358" Font-Size="Large" style="margin-left: 16px" Height="32px" Font-Bold="true"></asp:Label>
    <br />
    <asp:Label ID="Label8" runat="server" Width="137px"></asp:Label>

    <asp:Button ID ="btn21" runat="server" Text="B 1" OnClick="btn21_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn22" runat="server" Text="B 2" OnClick="btn22_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn23" runat="server" Text="B 3" OnClick="btn23_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000"/>
    <asp:Button ID ="btn24" runat="server" Text="B 4" OnClick="btn24_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn25" runat="server" Text="B 5" OnClick="btn25_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="bt26" runat="server" Text="B 6" OnClick="bt26_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn27" runat="server" Text="B 7" OnClick="btn27_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID ="btn28" runat="server" Text="B 8" OnClick="btn28_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn29" runat="server" Text="B 9" OnClick="btn29_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn30" runat="server" Text="B10" OnClick="btn30_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn31" runat="server" Text="B11" OnClick="btn31_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn32" runat="server" Text="B12" OnClick="btn32_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true"  BorderColor="#000000" />
    <asp:Button ID ="btn33" runat="server" Text="B13" OnClick="btn33_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn34" runat="server" Text="B14" OnClick="btn34_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    
    <br />

    <asp:Label ID="Label9" runat="server" Width="212px"></asp:Label>
    <br />
    <asp:Label ID="Label10" runat="server" Width="139px"></asp:Label>
    <asp:Button ID ="btn35" runat="server" Text="B15" OnClick="btn35_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn36" runat="server" Text="B16" OnClick="btn36_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn37" runat="server" Text="B17" OnClick="btn37_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn38" runat="server" Text="B18" OnClick="btn38_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn39" runat="server" Text="B19" OnClick="btn39_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn40" runat="server" Text="B20" OnClick="btn40_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn41" runat="server" Text="B21" OnClick="btn41_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
    <asp:Button ID ="btn42" runat="server" Text="B22" OnClick="btn42_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn43" runat="server" Text="B23" OnClick="btn43_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn44" runat="server" Text="B24" OnClick="btn44_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn45" runat="server" Text="B25" OnClick="btn45_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn46" runat="server" Text="B26" OnClick="btn46_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn47" runat="server" Text="B27" OnClick="btn47_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn48" runat="server" Text="B28" OnClick="btn48_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <br />
    <asp:Label ID="Label11" runat="server" Width="212px"></asp:Label><br />
    <asp:Label ID="Label12" runat="server" Width="137px"></asp:Label>
    <asp:Button ID ="btn49" runat="server" Text="B29" OnClick="btn49_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn50" runat="server" Text="B30" OnClick="btn50_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn51" runat="server" Text="B31" OnClick="btn51_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn52" runat="server" Text="B32" OnClick="btn52_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn53" runat="server" Text="B33" OnClick="btn53_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn54" runat="server" Text="B34" OnClick="btn54_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn55" runat="server" Text="B35" OnClick="btn55_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000"  />
    

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID ="btn56" runat="server" Text="B36" OnClick="btn56_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn57" runat="server" Text="B37" OnClick="btn57_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn58" runat="server" Text="B38" OnClick="btn58_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn59" runat="server" Text="B39" OnClick="btn59_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn60" runat="server" Text="B40" OnClick="btn60_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn61" runat="server" Text="B41" OnClick="btn61_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn62" runat="server" Text="B42" OnClick="btn62_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <br />
    <asp:Label ID="Label13" runat="server" Width="207px"></asp:Label>
    <asp:Label ID="Label14" runat="server" Width="92px" Text="GOLD :" Font-Bold="True" Font-Size="Large" ForeColor="#CC33FF" ></asp:Label>
    <asp:Label ID="Label19" runat="server" Width="131px" Text="350rs" Font-Italic="true" ForeColor="#1b3358" Font-Size="Large" style="margin-left: 0px" Font-Bold="true" ></asp:Label>
    <br />
    <asp:Label ID="Label26" runat="server" Width="97px"></asp:Label>
    <asp:Button ID ="btn63" runat="server" Text="C 1" OnClick="btn63_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn64" runat="server" Text="C 2" OnClick="btn64_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn65" runat="server" Text="C 3" OnClick="btn65_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn66" runat="server" Text="C 4" OnClick="btn66_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn67" runat="server" Text="C 5" OnClick="btn67_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn68" runat="server" Text="C 6" OnClick="btn68_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn69" runat="server" Text="C 7" OnClick="btn69_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn70" runat="server" Text="C 8" OnClick="btn70_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn71" runat="server" Text="C 9" OnClick="btn71_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn72" runat="server" Text="C10" OnClick="btn72_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red" />
    <asp:Button ID ="btn73" runat="server" Text="C11" OnClick="btn73_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" BackColor="Red"/>
    <asp:Button ID ="btn74" runat="server" Text="C12" OnClick="btn74_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn75" runat="server" Text="C13" OnClick="btn75_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn76" runat="server" Text="C14" OnClick="btn76_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn77" runat="server" Text="C15" OnClick="btn77_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn78" runat="server" Text="C16" OnClick="btn78_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn79" runat="server" Text="C17" OnClick="btn79_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn80" runat="server" Text="C18" OnClick="btn80_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn81" runat="server" Text="C19" OnClick="btn81_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn82" runat="server" Text="C20" OnClick="btn82_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <br />
    <asp:Label ID="Label15" runat="server" Width="212px"></asp:Label>
    <br />
    <asp:Label ID="Label27" runat="server" Width="97px"></asp:Label>
    <asp:Button ID ="btn83" runat="server" Text="C21" OnClick="btn83_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn84" runat="server" Text="C22" OnClick="btn84_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn85" runat="server" Text="C23" OnClick="btn85_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn86" runat="server" Text="C24" OnClick="btn86_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000"/>
    <asp:Button ID ="btn87" runat="server" Text="C25" OnClick="btn87_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn88" runat="server" Text="C26" OnClick="btn88_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn89" runat="server" Text="C27" OnClick="btn89_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn90" runat="server" Text="C28" OnClick="btn90_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true"  BorderColor="#000000"/>
    <asp:Button ID ="btn91" runat="server" Text="C29" OnClick="btn91_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn92" runat="server" Text="C30" OnClick="btn92_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn93" runat="server" Text="C31" OnClick="btn93_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn94" runat="server" Text="C32" OnClick="btn94_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn95" runat="server" Text="C33" OnClick="btn95_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn96" runat="server" Text="C34" OnClick="btn96_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn97" runat="server" Text="C35" OnClick="btn97_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn98" runat="server" Text="C35" OnClick="btn98_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true"  BorderColor="#000000"/>
    <asp:Button ID ="btn99" runat="server" Text="C37" OnClick="btn99_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn100" runat="server" Text="C38" OnClick="btn100_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn101" runat="server" Text="C39" OnClick="btn101_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn102" runat="server" Text="C40" OnClick="btn102_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <br />
     <asp:Label ID="Label16" runat="server" Width="212px"></asp:Label>
    <br />
    <asp:Label ID="Label28" runat="server" Width="97px"></asp:Label>
    <asp:Button ID ="btn103" runat="server" Text="C41" OnClick="btn103_Click" CssClass="unselected" Height="27px" Width="29px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn104" runat="server" Text="C42" OnClick="btn104_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn105" runat="server" Text="C43" OnClick="btn105_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn106" runat="server" Text="C44" OnClick="btn106_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn107" runat="server" Text="C45" OnClick="btn107_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn108" runat="server" Text="C46" OnClick="btn108_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn109" runat="server" Text="C47" OnClick="btn109_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn110" runat="server" Text="C48" OnClick="btn110_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn111" runat="server" Text="C49" OnClick="btn111_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn112" runat="server" Text="C50" OnClick="btn112_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn113" runat="server" Text="C51" OnClick="btn113_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn114" runat="server" Text="C52" OnClick="btn114_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn115" runat="server" Text="C53" OnClick="btn115_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn116" runat="server" Text="C54" OnClick="btn116_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn117" runat="server" Text="C55" OnClick="btn117_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn118" runat="server" Text="C56" OnClick="btn118_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn119" runat="server" Text="C57" OnClick="btn119_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn120" runat="server" Text="C58" OnClick="btn120_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn121" runat="server" Text="C59" OnClick="btn121_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <asp:Button ID ="btn122" runat="server" Text="C60" OnClick="btn122_Click" CssClass="unselected" Height="27px" Width="31px" Font-Size="Smaller" Font-Bold="true" BorderColor="#000000" />
    <br />
    <asp:Label ID="Label17" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label33" runat="server" Width="298px"></asp:Label>
    <asp:Button ID="availableButton" runat="server" CssClass="seat available" Enabled="false" BackColor="white" BorderColor="Black"></asp:Button>
    <asp:Label ID="availableLabel" runat="server" Text="Available" ForeColor="Black" Font-Bold="true" Font-Italic="true"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="selectedButton" runat="server" CssClass="seat selected" Enabled="false" BackColor="#00ff00" BorderColor="Black"></asp:Button>
    <asp:Label ID="selectedLabel" runat="server" Text="Selected" ForeColor="Black" Font-Bold="true" Font-Italic="true"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="soldButton" runat="server" CssClass="seat sold" Enabled="false" BackColor="Red" BorderColor="Black"></asp:Button>
    <asp:Label ID="soldLabel" runat="server" Text="Sold" ForeColor="Black" Font-Bold="true" Font-Italic="true"></asp:Label><br />
    <asp:Label ID="Label21" runat="server" Width="373px"></asp:Label>
    <asp:Label ID="Label23" runat="server" Text="SEATS :" Width="58px" Font-Bold="True" ForeColor="Red" Height="19px" Font-Italic="True"></asp:Label>
    <asp:Label ID="lblseat" runat="server" Width="267px" Style="margin-left: 10px" BackColor="White" ForeColor="Black" Font-Bold="True" BorderColor="Black" BorderStyle="Solid"></asp:Label><br />
    <asp:Label ID="Label32" runat="server" Width="798px" Height="16px" ></asp:Label>
    <br />
    <asp:Label ID="Label22" runat="server" Width="370px" ></asp:Label>
    <asp:Label ID="Label20" runat="server" Text="TOTAL :" ForeColor="Red" Width="61px" Font-Italic="True" Font-Bold="True"></asp:Label>
    <asp:Label ID="lblprice" runat="server" Width="267px" style="margin-left: 10px" BackColor="White" ForeColor="Black" Font-Bold="True" BorderColor="Black" BorderStyle="Solid"></asp:Label>
    <br />
    <asp:Label ID="Label24" runat="server" Width="422px" ></asp:Label><br />
    <asp:Label ID="Label25" runat="server" Width="435px" ></asp:Label>
    <asp:Button ID="btnpay" runat="server" Text="Pay" OnClick="btnpay_Click" Font-Italic="true" Font-Bold="true" ForeColor="Black" BackColor="#00ff00" Width="101px" />

</asp:Content>
