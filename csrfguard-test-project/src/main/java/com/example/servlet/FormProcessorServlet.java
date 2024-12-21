package com.example.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/processForm")
public class FormProcessorServlet extends HttpServlet {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");

        resp.setContentType("text/html");
        resp.getWriter().write("<h1>Formulaire soumis avec succès</h1>");
        resp.getWriter().write("<p>Nom d'utilisateur : " + username + "</p>");
        resp.getWriter().write("<p>Email : " + email + "</p>");
    }
}
