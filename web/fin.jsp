<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="LeJeu" scope="session" class="modele.jeu"/>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fin du jeu</title>
</head>
<body>
<h1>Jeu du nombre mystère</h1>
<h2><%
out.print(session.getAttribute("msg"));
session.invalidate();
%></h2>
<h2><a href="control">Demarrer le jeu</a></h2>
</body>
</html>
