using System;
using System.Configuration;
using System.Data;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Xml;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;

using System.Data;
using System.Data.OracleClient;



public partial class _Default : System.Web.UI.Page
{

    
    
    internal int selectIndex
    {
        get
        {
            if (this.Session["Page_selectIndex"] == null)
                return -1;

            return Int32.Parse(this.Session["Page_selectIndex"].ToString());
        }
        set
        {
            this.Session["Page_selectIndex"] = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

       


        if (!Page.IsPostBack)
        {

            carrega_dados_XML();
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "script", " qualidade();", true);
        }



    }
    /// carrega os dados xml
    /// </summary>


    private void carrega_dados_XML()
    {


        using (DataSet ds = new DataSet())
        {
            try
            {

                
                if ((this.cbolinha.SelectedIndex == 0) || (this.cbolinha.SelectedIndex == 1))
                {

                  //  ds.ReadXml(@"F:\Linhas producao\xml1.xml");
                    
                }

                if ((this.cbolinha.SelectedIndex == 2) || (this.cbolinha.SelectedIndex == 3))
                {

                  //  ds.ReadXml(@"F:\Linhas producao\xml2.xml");
                    
                }

                if ((this.cbolinha.SelectedIndex == 4) || (this.cbolinha.SelectedIndex == 5))
                {

                  //  ds.ReadXml(@"F:\Linhas producao\xml3.xml");

                }

                if ((this.cbolinha.SelectedIndex == 6) || (this.cbolinha.SelectedIndex == 7))
                {

                  //  ds.ReadXml(@"F:\Linhas producao\xml4.xml");

                }



                //if (ds.Tables.Count > 0)
                //{
                    carrega_campos();
                //}
            }


            catch (System.IO.IOException e)
            {
                //  MessageBox.Show("Erro :"+ e.Message );
            }

            finally
            {
                if (ds != null)
                {
                    ds.Dispose();
                }
            }

        }//FIM USING

        
    }
    //==========================
   
    
    //==================
    private void carrega_campos()
    {

        string valor_A = "?";
        string busca;
        string turno = "?";
        string linha = "?";
        string forno;
        string data;

        if ((this.cbolinha.SelectedIndex % 2) == 0)
        {
            busca = "1";
        }
        else
        {
            busca = "2";
        }

    
            
    
                
            this.linha1.Text = "Linha " + linha + " turno " ;
            this.prod_turno.Text = "PRODUTO ABCDE";


            this.A1.Text = "A = 97.10" ; 
            this.B1.Text = "B = 1.20" ;
            this.D1.Text = "D = 1.00";

            this.adata.Text = "01/08/2017"; 
        

        this.falha_palets1.Text = "REPROVADO NA LINHA ..................... 10" ;
        this.falha_palets2.Text = "META GERAL DO TURNO .......................... 5" ;
        this.falha_palets3.Text = "TOTAL GERAL NO TURNO ............................ 11" ;
        this.falha_palets4.Text = "TOTAL GERAL NO DIA ....................................... 20" ;

        //forno = query_ora("user id=deltadados; password=sqlsa05; data source= " + "(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)" + "(HOST=192.168.1.102)(PORT=1521))(CONNECT_DATA=" + "(SERVICE_NAME=delta.world)))", Convert.ToString(cbolinha.SelectedIndex + 1));

        this.falha_forno.Text = "EFICIENCIA FORNO .................... 100%"  ;
        
       
    }

    

    protected void cbolinha_SelectedIndexChanged(object sender, EventArgs e)
    {
        // if (!String.IsNullOrEmpty(cbolinha.SelectedValue))
        // {


        carrega_dados_XML();
        ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "script", " qualidade();", true);   
        //}
    }

    //protected void Timer1_Tick(object sender, EventArgs e)
    

    protected void controlaAtualizacao_Tick(object sender, EventArgs e)
    {

        
        carrega_dados_XML();
       
        
        
        ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "script", " qualidade();", true);
       
    }




     

}
