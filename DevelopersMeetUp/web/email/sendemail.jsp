<%@page import="com.mohitpaudel.webdevelopment.dao.impl.ClientDaoImpl"%>
<%@page import="com.mohitpaudel.webdevelopment.dao.ClientDao"%>
<%@page import="com.mohitpaudel.webdevelopment.entity.Client"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>

<%

    if (request.getMethod().equalsIgnoreCase("post")) {
        Client client = new Client();
        ClientDao cDao = new ClientDaoImpl();

        client.setReceiver(request.getParameter("sendto"));
        client.setEmail(request.getParameter("sendfrom"));
        client.setUsername(request.getParameter("username"));
        client.setSubject(request.getParameter("subject"));
        client.setMessage(request.getParameter("mail"));
        cDao.add(client);

        for (Client c : cDao.getAll()) {


%> 

<%            String to = c.getReceiver();

            // Sender's email ID needs to be mentioned
            String from = c.getEmail();
            final String username = c.getUsername();
            final String password = "******";

            // Assuming you are sending email through relay.jangosmtp.net
            String host = "smtp.ntc.net.np";

            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            //props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "25");

            // Get the Session object.
            Session ses = Session.getInstance(props,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                        }
                    });

            try {
                // Create a default MimeMessage object.
                Message message = new MimeMessage(ses);

                // Set From: header field of the header.
                message.setFrom(new InternetAddress(from));

                // Set To: header field of the header.
                message.setRecipients(Message.RecipientType.TO,
                        InternetAddress.parse(to));

                // Set Subject: header field
                message.setSubject(c.getSubject());

                // Now set the actual message
                message.setText(c.getMessage());

                // Send message
            
                Transport.send(message);
                response.sendRedirect("../index.html?success");
                

            } catch (MessagingException e) {
                out.print(e.getLocalizedMessage());
            }

        }

    }else
    {
        response.sendRedirect("../index.html?error");
    }


%>

