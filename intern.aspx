<body>
    
    <form id="form1" runat="server">
        
    <asp:Label ID="ergebnis" runat="server" />
        
    <div>
        <h4>Interne Stellenausschreibung Admin-Bereich</h4> <br /><!-- Ueberschrifft -->
        Angemeldeter Nutzer:<asp:Label ID="L_info" runat="server" Text=""></asp:Label>
                       
    </div>
    
    <div id="div_Eintrag" runat="server">  
        <!-- erstellt die Tablle (GridView) 
                der Bereich <columns> gibt die Spalten an aus der die abgefragten Eintraege angezeigt werden sollen
                die Button "anzeigen" und "verbergen" funktionieren auch ohne aktivierter checkbox-->
        <asp:Label ID="LNavigation" runat="server" Text=""></asp:Label>
        <asp:GridView 
          ID="grdResults" 
          runat="server" 
          PagerStyle-BorderStyle="None" 
          RowStyle-BorderStyle="None" 
          SelectedRowStyle-BorderStyle="None" 
          HeaderStyle-BorderStyle="None" 
          GridLines="Horizontal" 
          FooterStyle-BorderStyle="None" 
          EmptyDataRowStyle-BorderStyle="None" 
          BorderStyle="none"
          OnRowCommand="grdResults_RowCommand"
          Onrowdatabound="grdResults_RowDataBound"
          AutoGenerateEditButton="false"
          >
          
          <columns>
           
            <asp:boundfield datafield="id" htmlencode="false" headertext="Nummer" HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Black"/>
            <asp:BoundField DataField="docname" HtmlEncode="false" HeaderText="Name" HeaderStyle-HorizontalAlign="Left" visible="true" HeaderStyle-ForeColor="Black"/>
            
            <asp:boundfield datafield="displayname" htmlencode="false" headertext="Anzeige" HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Black"/>
            <asp:boundfield datafield="author" htmlencode="false" headertext="Autor" HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Black"/>
            <asp:boundfield datafield="oeffentlich" htmlencode="false" headertext="gültig bis" ItemStyle-Font-Size="0" HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Black"/>
            <asp:boundfield datafield="gueltigbis" htmlencode="false" headertext="" HeaderStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="Black" />

            <asp:ButtonField ButtonType="Button" CommandName="anzeigen" HeaderText="" Text="anzeigen" ItemStyle-HorizontalAlign="center" />
            <asp:ButtonField ButtonType="Button" CommandName="verbergen" HeaderText="" Text="verbergen" ItemStyle-HorizontalAlign="center" />
            <asp:ButtonFIeld ButtonType="image" CommandName="loeschen" HeaderText="" imageurl="example1.jpg" ItemStyle-HorizontalAlign="Center" />
            <asp:ButtonFIeld ButtonType="image" CommandName="speichern" HeaderText="" ImageUrl="example2.jpg" ItemStyle-HorizontalAlign="Center" />
                                   
          </columns>          
      </asp:GridView>
     
        </div>
        
    </form>
</body>
