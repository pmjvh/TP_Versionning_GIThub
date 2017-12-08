<html>
    <jsp:useBean id="LeJeu" scope="session" class="modele.jeu"/>
    <body>
        <h1>Jeu du nombre mystère</h1>
        <form action="jouer.jsp">
            <%
                boolean saisie = false;
                // on regarde si on a déjà saisi un nb
                if (request.getParameter("bt_ok") != null) {
                    // on regarde si le nb saisi est valide
                    try {
                        int nb = Integer.parseInt(request.getParameter("nb"));
                        if (nb < 1 || nb > 20) {
                            out.print("<H3>Nombre saisi " + nb + " incorrect</H3>");
                            saisie = true;
                        } else {
                            if (LeJeu.getNbrAleatoire() == nb) {
                                out.print("<H2>Bravo, il fallait trouver " + LeJeu.getNbrAleatoire() + "</H2>");
                                out.print("<P><a href='jouer.jsp'>Nouveau jeu</a>");
                                session.invalidate();
                            } else {
                                LeJeu.setNbEssai(LeJeu.getNbEssai() + 1);
                                if (3 - LeJeu.getNbEssai() <= 0) { %> <H2> Désolée vous avez perdu ...</H2> Vous pouvez recommencez ... <a href='jouer.jsp'>Nouveau jeu</a> <% session.invalidate();
                                                    } else {
                                                        saisie = true;
                                                        if (nb > LeJeu.getNbrAleatoire()) {
                                                            out.print("<H3>Plus petit que " + nb + " !</H3>");
                                                        } else {
                                                            out.print("<H3>Plus grand que " + nb + " !</H3>");
                                                        }
                                                    }
                                                }
                                            }
                                        } catch (Exception e) {
            out.print("Erreur rencontree : " + e.getMessage() + " - Veuillez recommencer ...");
                                            saisie = true;
                                        };
                                    } else
                                        saisie = true;
                                    if (saisie == true) {
                %>
            <H2> Il vous reste <%= 3 - LeJeu.getNbEssai()%> essai (s) </H2>
            Entrez une valeur comprise entre 1 et 20 : <input name= "nb" type="text">
            <input type="submit" value="OK" name="bt_ok">
            <% }%>
        </form>
    </body> </html>