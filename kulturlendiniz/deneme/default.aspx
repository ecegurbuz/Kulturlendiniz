﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="deneme._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div id="wrapper">
            <header>
                <div class="logo" >
                    <ul>
                        <li>
                    <a href="default.aspx">
                    KÜLTÜRLENDİNİZ
                        </a>
                            </li>
                        </ul>

                </div>

                
                <nav id="sag-nav">
                 
                    <ul>
                        <li>
                            <a href="kayit.aspx"> kayıt ol </a>
                            
                        </li>
                         <li>
                             <a href="giris.aspx"> giriş yap </a>
                            
                        </li>
                        </ul>
                       
                        
                      

                   

                </nav>
                <div class="arama-wrap">

                    <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server"  placeholder="bir şeyler ara"/>
                    <asp:Button ID="btnArama" CssClass="btnArama" Text="Ara" runat="server"  />
                </div>

                <nav id="alt-nav">

                    <ul>
                        
                          <li>
                            <a href="tiyatro.aspx">TİYATRO</a>
                            
                        </li>
                         <li>
                             <a href="sinema.aspx">SİNEMA</a>
                            
                        </li>
                        <li>
                            <a href="dizi.aspx">DİZİ</a>
                            
                        </li>
                         <li>
                             <a href="resim.aspx">RESİM</a>
                            
                        </li>
                        <li>
                            <a href="müzik.aspx">MÜZİK</a>
                            
                        </li>
                         <li>
                            <a href="eglence.aspx">EĞLENCE</a>
                            
                         </li>

               
                    </ul>


                </nav>
            </header>
            
           <div id="banner" class="banner">
                <div id="sol-taraf" class="sol">
                    <div class="p">**Popüler**</div>
                    
                    <ul>
                        <li>
                    <asp:ListView ID="popüler" runat="server">
                       <ItemTemplate>
                         

                               <a class="kat">
                             <a href="konu.aspx?konuID=<%#Eval("id") %>">
                               
                                   
                               <asp:Label CssClass="baslik" Text='<%#Eval("baslik") %>' runat="server"></asp:Label>
                                       
                                  
                                 </a>
                                   </a>
                           <small>
                               <asp:Label CssClass="y_sayisi" Text='<%#Eval("y_sayisi") %>' runat="server"></asp:Label>
                               </small>
                                       
                                   
                                   
                    </ItemTemplate>
                        
                   </asp:ListView>
                            </li>
                        </ul>
                       

                </div>
               <div class="icerik">
                   
                  <div class="r">
                   <asp:ListView ID="Basliklar" runat="server">
                       <ItemTemplate>
                           
                           <div class="Basliklar">
                              
                             <a href="konu.aspx?konuID=<%#Eval("id") %>">
                                 <div class="img">
                               <asp:Image CssClass="img" ImageUrl='<%#Eval("resim") %>' runat="server"></asp:Image>
                               </div>
                                  <div class="baslik">
                                      <a>
                               <asp:Label CssClass="baslik" Text='<%#Eval("baslik") %>' runat="server"></asp:Label>
                                       </a>
                                   </div>
                                 
                                 <div class="kategori">  
                                     <a>
                               <asp:Label CssClass="kategori" Text='<%#Eval("kategori") %>' runat="server"></asp:Label>
                                         </a>
                                 </div>
                                  
                              </a>     
                   </div>


                       </ItemTemplate>
                        
                   </asp:ListView>
                       
                  </div>
               </div>
               
               

               <div class="sag">
                   <div class="reklam">
                       <a class="categories--large__item categoriesWrapperItem" href="https://www.biletix.com/anasayfa/TURKIYE/tr" target="_blank" title="Electronica Festival İstanbul 2021" data-type="spotlight-item">
                                <div class="block__img--background">  
                                    <img src="NewFolder1/biletix.jpg" data-type="spotlight-item-image"/>
                                </div>
                                <div class="block__caption" data-type="spotlight-item-name">
                                    <h3 class="categories__caption__heading">BİLETLER BİLETİX`TE</h3>
                                </div>
                            </a>

                       <a class="categories--large__item categoriesWrapperItem" href="https://www.biletix.com/etkinlik/0E0AE/TURKIYE/tr?int_cmp_name=0E0AE&int_cmp_id=TR-page-TURKIYE-tr&int_cmp_creative=page-hoevent_section-&btx_link=btx_page_hoevent_section_0E0AE" target="_blank" title="Yo-Yo Ma" data-type="spotlight-item">
                                <div class="block__img--background">              
                                    	<img src="NewFolder1/yoyoma-ZE0AC.png" data-type="spotlight-item-image" />                               
                                </div>
                                <div class="block__caption" data-type="spotlight-item-name">
                                    <h3 class="categories__caption__heading"> Turkcell Platinum Istanbul Night Flight konserler serisi başlıyor. Yo-Yo Ma</h3>
                                </div>
                            </a>

                       <a class="categories--small__item categoriesWrapperItem" href="https://www.biletix.com/etkinlik-grup/133762201/TURKIYE/tr?int_cmp_name=133762201&int_cmp_id=TR-page-TURKIYE-tr&int_cmp_creative=page-hoevent_section-&btx_link=btx_page_hoevent_section_133762201" target="_blank" title="BKM Tiyatro’da" data-type="spotlight-item">
                                <div class="block__img--background">
                                    <img src="NewFolder1/bkm-tiyatro-5133762201.png" data-type="spotlight-item-image"/>
                                </div>
                                <div class="block__caption" data-type="spotlight-item-name">
                                    <h3 class="categories__caption__heading">Beşiktaş Kültür Merkezi'nde dopdolu bir sezon devam ediyor. BKM Tiyatro’da</h3>
                                </div>
                            </a>

                       <a class="categories--large__item categoriesWrapperItem" href="https://www.biletix.com/etkinlik-grup/264062470/TURKIYE/tr?int_cmp_name=264062470&int_cmp_id=TR-page-TURKIYE-tr&int_cmp_creative=page-hoevent_section-&btx_link=btx_page_hoevent_section_264062470" target="_blank" title="JoJo Live Konserleri" data-type="spotlight-item">
                                <div class="block__img--background">  
                                    <img src="NewFolder1/jojolive-264062470.png" data-type="spotlight-item-image"/>
                                </div>
                                <div class="block__caption" data-type="spotlight-item-name">
                                    <h3 class="categories__caption__heading">JoJo, ister tek başına ister arkadaşlarınla eğlencenin tadını çıkarabileceğin, alıştıklarından daha fazlasını veren yeni nesil eğlence platformu! JoJo Live Konserleri</h3>
                                </div>
                            </a>
                      
                       <a class="categories--small__item categoriesWrapperItem" href="https://www.biletix.com/etkinlik/ZZV15/TURKIYE/tr?int_cmp_name=ZZV15&int_cmp_id=TR-page-TURKIYE-tr&int_cmp_creative=page-hoevent_section-&btx_link=btx_page_hoevent_section_ZZV15" target="_blank" title="Piraye" data-type="spotlight-item">
                                <div class="block__img--background">
                                    <img src="NewFolder1/VZV04_1.gif" data-type="spotlight-item-image"/>
                                </div>
                                <div class="block__caption" data-type="spotlight-item-name">
                                    <h3 class="categories__caption__heading">Nazım Hikmet'in en büyük ilham kaynağı, ölümsüz aşkı "Piraye" online gösterim ile yalnızca Seyretix'de... Piraye</h3>
                                </div>
                            </a>
                  
                            
				</div>
                       

                   </div>
               </div>
            

                <footer class="footer"></footer>

        </div>
    </form>
</body>
</html>


