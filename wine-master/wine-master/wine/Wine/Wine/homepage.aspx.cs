using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net.Configuration;
using System.Configuration;

namespace Wine
{
    public partial class homepage : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearForm();
            }
        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            Send();
        }

        void Send()
        {
            try
            {
                string fromAddress = txtToAddress.Text.Trim();
                string toAddress = "nikamezvrishvili18@gmail.com";
                string subject = txtSubject.Text.Trim();
                string body = txtBody.Text.Trim();

               
                 if (string.IsNullOrEmpty(subject))
                {
                    txtSubject.Focus();
                    lblMessage.Text = "გთხოვთ შეავსოთ ყველა ველი.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                  if (string.IsNullOrEmpty(fromAddress))
                {
                    txtToAddress.Focus();
                    lblMessage.Text = "გთხოვთ შეავსოთ ყველა ველი.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else if (string.IsNullOrEmpty(body))
                {
                    txtBody.Focus();
                    lblMessage.Text = "გთხოვთ შეავსოთ ყველა ველი.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    using (MailMessage mm = new MailMessage(fromAddress, toAddress))
                    {
                        mm.Subject = subject;
                        mm.Body = body;
                        mm.IsBodyHtml = false;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Send(mm);
                        ClearForm();
                        lblMessage.Text = "გაიგზავნა წარმატებით...!";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        void ClearForm()
        {
            
            txtSubject.Text = string.Empty;
            txtBody.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }
    }
}
