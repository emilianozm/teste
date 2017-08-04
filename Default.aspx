<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" 

Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   
   
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
      

   
   <script src="jquery-1.4.1.js" type="text/javascript"></script>
   
   
   
   <noscript>
    <meta http-equiv="refresh" content="1; url=http://127.0.0.1/semjava.html">
</noscript>
  
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
   <link rel="stylesheet" type="text/css" href="estilos.css" media="(min-width: 1024px)">
   <link rel="stylesheet" type="text/css" href="mobile.css" media="(max-width: 939px)">
        
   
    
<script>

    var contador = 15;
    var myVar = setInterval("conta()", 1000);
    var timer;
    var flag=0;
    
    function enable_count() {



    }



    function navega() {

        if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)) {
            var ieversion = new Number(RegExp.$1)

            if (ieversion < 10) {

                alert('Browser incompativel, use versao 10 ou superior');

            }

        }

    }



    function conta() {





        if (contador == 0) {
            // if ((document.getElementById("cbolinha").selectedIndex) % 2 == 0) {

            if ((document.getElementById("cbolinha").selectedIndex) < 5) {
                document.getElementById("cbolinha").selectedIndex = document.getElementById("cbolinha").selectedIndex + 1;

            }

            else {
                //document.getElementById("cbolinha").selectedIndex = document.getElementById("cbolinha").selectedIndex - 1;
                document.getElementById("cbolinha").selectedIndex = 0;
            }


        }



        if (contador > 0) {
            contador = contador - 1;

            $("#tempo").val(contador);
            //clearInterval(exibe_alerta(1));

        }

        else {
            contador = 15;

        }

    }



    function meta() {
        $(document).ready(function () {

            $("#alerta1").animate({
                height: 'toggle'
            });



        });
    }

    function myFunction() {

       

    }

    
    function get_browser() {
        var ua = navigator.userAgent, tem,
M = ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*([\d\.]+)/i) || [];
        if (/trident/i.test(M[1])) {
            tem = /\brv[ :]+(\d+(\.\d+)?)/g.exec(ua) || [];
            return 'IE ' + (tem[1] || '');
        }
        M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];
        if ((tem = ua.match(/version\/([\.\d]+)/i)) != null) M[2] = tem[1];
        return M.join(' ');
    }
    
    function fonte() {

        if ($(window).width() < 940) {
            calc_text = (((($(window).width() * 0.0202) / $(window).width()) * 900) / 100) * 50;
            $(document.head).append('<style>#main{font-size:100%;}</style>');
            $(document.head).append('<style>#A1{position:absolute;width: 65%;height: 28%;font-size:2.4em;margin-top:0.0em;margin-bottom:0.0em;float:left; }</style>');
            $(document.head).append('<style>#B1{position:absolute;width: 65%;height: 28%;font-size:2.4em;margin-top:1.6em;margin-bottom:0.0em;float:left; }</style>');
            $(document.head).append('<style>#D1{position:relative;width: 65%;height: 28%;font-size:2.4em;margin-top:3.2em;margin-bottom:0.0em;float:left; }</style>');
            $(document.head).append('<style>#prod_turno{font-size:2.0em; }</style>');
            $(document.head).append('<style>#linha1{font-size:2.2em; }</style>');
            $(document.head).append('<style>#adata{font-size:1.8em; }</style>');
        }

        

            if ($(window).width() > 940) {
                calc_text = (((($(window).width() * 0.0202) / $(window).width()) * 900) / 100) * 85;
                $(document.head).append('<style>#main{font-size:100%;}</style>');

                
                $(document.head).append('<style>#A1{position:relative;width: 99%;height: 31%;font-size:2.4em;margin-top:0.02em;margin-bottom:0%;float:left; }</style>');
                $(document.head).append('<style>#B1{position:relative;width: 99%;height: 31%;font-size:2.4em;margin-top:0.02em;margin-bottom:0.0em;float:left; }</style>');
                $(document.head).append('<style>#D1{position:relative;width: 99%;height: 31%;font-size:2.4em;margin-top:0.03em;margin-bottom:0.0em;float:left; }</style>');
                
                $(document.head).append('<style>#prod_turno{font-size:2.8em; }</style>');
                $(document.head).append('<style>#linha1{font-size:3.0em; }</style>');
                $(document.head).append('<style>#adata{font-size:2.7em; }</style>');

            }

            //$('body').css('font-size', calc_text);
            //$('div').css('font-size', calc_text);

            
    }


    function tela() {


        // $('#conteudoDir').css('width', 99 + "%");
        // $('#conteudoDir').css('height', 93 + "%");


        

    }

    function qualidade() {
        

   var meta = $('#A1').val();

   meta=meta.substring(3, meta.length);

   

   $("#led").css("opacity", "1"); //define opacidade inicial
   if (meta > 96) {

       $("#led").html($("<img>").attr("src", "green.jpg"));
       

       
        $("#led").css("opacity", "1");
       
       
       clearInterval(timer);
       $("#img").html($("<img>").attr("src", "good.jpg"));
       flag = 0;
       
   }

   if (meta == 96) {

       $("#led").html($("<img>").attr("src", "yellow.jpg"));
       

       
           $("#led").css("opacity", "1");
       
       
       clearInterval(timer);
       $("#img").html($("<img>").attr("src", "good.jpg"));
       flag = 0;
       
   }
   
   
   if (meta < 96) {

       $("#led").html($("<img>").attr("src", "red.jpg"));

       flag = 1;
       timer = setInterval('exibe_alerta()', 1000);
      
           
       $("#img").html($("<img>").attr("src", "scrap.jpg"));
       
   
   }     

 }



    function alertFunc() {



        $(document).ready(function () {


            navega();

            fonte();

            
            //var browser = get_browser();
            //alert(browser);



        });


       

    }





    function alert_led() {
        var meta = $("#A1").val();


        //------------------------------------------------------


        $("#led").css("opacity", "1"); //define opacidade inicial
        if (meta > 95) {

            exibe_alerta(1);
            clearTimeout(exibe_alerta(1));

            return;
        }

        if (meta < 96) {
            setTimeout(function () {


                exibe_alerta(0);


            }, 2000);
        }



    }




    function exibe_alerta() {




        if (flag == 1) {


            if ($("#led").css("opacity") == "0.5") {

                $("#led").css("opacity", "1");


                return;

            }
            if ($("#led").css("opacity") == "1") {



                $("#led").css("opacity", "0.5");


                return;
            }

        }

        if (flag == 0) {
            $("#led").css("opacity", "1");
        }
    }
</script>
 
    


</head>
<body id=main onload="alertFunc()">
   <div id="conteudoDir">
    <form id="form1" runat="server">
    
        
          
          <table class="style1" >
            
            <tr>
              <td colspan="2">
                
<asp:ScriptManager runat="server" id="scpMan">
</asp:ScriptManager>

<asp:Timer runat="server" id="controlaAtualizacao" Interval="8000" OnTick="controlaAtualizacao_Tick">  
      </asp:Timer>




<asp:UpdatePanel runat="server" id="UpdatePanel1">
  <Triggers>
              
              <asp:AsyncPostBackTrigger ControlID="controlaAtualizacao" />
  </Triggers> 
   
   <ContentTemplate>
       
                  
                
      
        
          
        
      <div id="div_principal">
         
           
        
         
         <div class="black">
            
            <asp:Label ID="linha1"  runat="server" Text="" CssClass="linha" Width="68%" Height="95%" ></asp:Label>
                  
                  <div class="data">
                    <asp:Label ID="adata"  runat="server" Text="" CssClass="diamesano" Width="99%" Height="99%" ></asp:Label>
                  </div>
         
         </div>
         
         <div class="rodando" >
            
            <asp:Label ID="prod_turno"  runat="server" Text="" CssClass="prod_roda" Width="99%" Height="96%" ></asp:Label>
            
         
         </div>


<div class="campos_L1">
  
     
<div class="abd" >
   
   <asp:Textbox ID="A1"  runat="server" ForeColor="#FFFFFF" BackColor="black" Text="A%" CssClass=""  BorderStyle="None" Enabled="False" ></asp:Textbox>
   <asp:Textbox ID="B1"  runat="server" ForeColor="#FFFFFF" BackColor="black" Text="B%" CssClass=""  BorderStyle="None" Enabled="False"></asp:Textbox>           
   <asp:Textbox ID="D1"  runat="server" ForeColor="#FFFFFF" BackColor="black" Text="D%" CssClass=""  BorderStyle="None" Enabled="False"></asp:Textbox> 
              
</div>
  
<div class="imagens1" id="led">

   

</div>


<div class="imagens2" id="img">



</div>


</div>


 <div class="campos_L3">
   <asp:Textbox ID="falha_forno"  runat="server" ForeColor="#FFFFFF" BackColor="#006400" Text="" CssClass="styledeforno" Width="" Height="" BorderStyle="None" Enabled="False"></asp:Textbox>
            
 </div>

 <div class="campos_L4">
   
   <asp:TextBox ID="falha_palets1"  runat="server" ForeColor="white" BackColor="#8B0000" Text="" Width="" Height="" CssClass="styledefeitos"  Enabled="False" BorderStyle="None"></asp:TextBox>
   <asp:TextBox ID="falha_palets2"  runat="server" ForeColor="white" BackColor="#8B0000" Text="" Width="" Height="" CssClass="styledefeitos"  Enabled="False" BorderStyle="None"></asp:TextBox>
   <asp:TextBox ID="falha_palets3"  runat="server" ForeColor="white" BackColor="#8B0000" Text="" Width="" Height="" CssClass="styledefeitos"  Enabled="False" BorderStyle="None"></asp:TextBox>
   <asp:TextBox ID="falha_palets4"  runat="server" ForeColor="white" BackColor="#8B0000" Text="" Width="" Height="" CssClass="styledefeitos"  Enabled="False" BorderStyle="None"></asp:TextBox>
            
 <div class="rodape">
          
          
          <asp:DropDownList id="cbolinha" Runat="Server" Width="55%" Height="100%" font-size="1.8em" 

class="" AutoPostBack="true"
        OnSelectedIndexChanged="cbolinha_SelectedIndexChanged"   >
          <asp:ListItem Text="Linhas 1 " Value="1"/>
          <asp:ListItem Text="Linhas 2 " Value="2"/>
          <asp:ListItem Text="Linhas 3 " Value="3"/>
          <asp:ListItem Text="Linhas 4" Value="4"/>
          <asp:ListItem Text="Linhas 5" Value="5"/>
          <asp:ListItem Text="Linhas 6" Value="6"/>
          

         </asp:DropDownList>
    
              
            
  
  <div style="color:#FFFFFF;background:#8B0000;height:35%;width:28%;position:absolute; 
  right:20px;top:1px;"> 
  

 <input  id="tempo" readonly="true" style="font-size:1.6em;color:#FFFFFF;background:#8B0000; width:20%; border:0;"></input> 
  
  </div>
         
 </div>

 
 </div>                             
              
 
 
 
                       
 </div>

  
       
  
 
                      
</ContentTemplate>
</asp:UpdatePanel>         
         
  
  

  

           
         
        </td>
       </tr>
    </table>
  
  

  </form> 
 </div> 
</body>
</html>
