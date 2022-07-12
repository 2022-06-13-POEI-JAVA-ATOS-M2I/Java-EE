package fr.m2i.jee;

import fr.m2i.distributeur.Distributeur;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DistributeurServlet extends HttpServlet {

    private Distributeur distributeur;

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        distributeur = Distributeur.getInstance();

        request.setAttribute("stock", distributeur.getStock());
        request.setAttribute("credit", distributeur.getCredit());
        request.setAttribute("creditError", null);
        request.setAttribute("productError", null);
        request.setAttribute("insufficientError", null);

        this.getServletContext().getRequestDispatcher("/WEB-INF/distributeur.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        distributeur = Distributeur.getInstance();
        
        addCredit(request);
        chooseProduct(request);

        request.setAttribute("stock", distributeur.getStock());
        request.setAttribute("credit", distributeur.getCredit());

        this.getServletContext().getRequestDispatcher("/WEB-INF/distributeur.jsp").forward(request, response);
    }
    
    private void addCredit(HttpServletRequest request) {
        String credit = request.getParameter("credit");

        if (credit == null) {
            request.setAttribute("creditError", null);
            return;
        }
        
        try {
            int amount = Integer.parseInt(credit);

            if (amount < 0) {
                request.setAttribute("creditError", "Vous ne pouvez pas ajouter un monant négatif");
                return;
            }

            distributeur.setCredit(distributeur.getCredit() + amount);
            request.setAttribute("creditError", null);
        } catch (Exception e) {
            request.setAttribute("creditError", "Une erreur est survenue lors de l'ajout de crédit");
        }
    }

    private void chooseProduct(HttpServletRequest request) {
        String id = request.getParameter("id");

        if (id == null) {
            request.setAttribute("productError", null);
            request.setAttribute("insufficientError", null);
            return;
        }

        try {
            int productId = Integer.parseInt(id);

            if (distributeur.getProduit(productId) == null) {
                request.setAttribute("productError", "Le produit demandé n'exsite pas");
                return;
            }

            if (!distributeur.creditSuffisant(productId)) {
                request.setAttribute("insufficientError", "Votre crédit est insuffisant");
                return;
            }

            if (!distributeur.stockSuffisant(productId)) {
                request.setAttribute("productError", "Le produit n'est plus en stock");
                return;
            }

            distributeur.commanderProduit(productId);
            request.setAttribute("productError", null);
            request.setAttribute("insufficientError", null);
        } catch(Exception e) {
            request.setAttribute("productError", "Une erreur est survenue lors de votre commande");
        }
               
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
