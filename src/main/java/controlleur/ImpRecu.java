/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlleur;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Table;
import dao.RenouDao;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Renou;

/**
 *
 * @author laine
 */
public class ImpRecu extends HttpServlet {

    RenouDao rdao = new RenouDao();
    Renou rn = new Renou();

    /**
     * ID (Numéro unique auto incrémenté), ID véhicule (Numéro du véhicule),
     * Numéro transaction, Montant Assurance, Date paiement, Date fin assurance
     */
    protected void recuPdf(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        PrintWriter out = response.getWriter();
        try {
            String id = request.getParameter("id");
            String id_ren, id_vehicule, no_trans, montant, date_paie, date_exp;
            String path = request.getServletContext().getRealPath("") + File.separator + "recus.pdf";

            if (rdao.rechercher(id) != null) {
                List<Renou> liste = rdao.lister();
                for (Renou rl : liste) {
                    id_ren = "" + rl.getId_renou();
                    id_vehicule = "" + rl.getId_vehicule();
                    no_trans = rl.getNo_transaction();
                    montant = "" + rl.getMontant_assu();
                    date_paie = rl.getDate_paie();
                    date_exp = rl.getDate_demission();

                    PdfWriter pw = new PdfWriter(path);
                    PdfDocument pd = new PdfDocument(pw);
                    pd.addNewPage();
                    Document d = new Document(pd);
                    Paragraph pr = new Paragraph("Recus: renouvellement d'assurance");
                    float colonne[] = {150f, 100f, 100f, 100f, 100f, 100f};
                    Table table = new Table(colonne);
                    d.add(pr);
//        entete de la table
                    table.addCell(new Cell().add(new Paragraph("Id")));
                    table.addCell(new Cell().add(new Paragraph("ID Vehicule")));
                    table.addCell(new Cell().add(new Paragraph("No Transaction")));
                    table.addCell(new Cell().add(new Paragraph("Montant D'assurance")));
                    table.addCell(new Cell().add(new Paragraph("Date Paiement")));
                    table.addCell(new Cell().add(new Paragraph("Date Expiration")));

// Corps de la table
                    table.addCell(new Cell().add(new Paragraph(id_ren)));
                    table.addCell(new Cell().add(new Paragraph(id_vehicule)));
                    table.addCell(new Cell().add(new Paragraph(no_trans)));
                    table.addCell(new Cell().add(new Paragraph(montant)));
                    table.addCell(new Cell().add(new Paragraph(date_paie)));
                    table.addCell(new Cell().add(new Paragraph(date_exp)));
                    d.add(table);
                    d.close();

                }
            } else {
//                out.println("Je n'ai pas trouver de Id");
            }
            response.sendRedirect("Renouvellement/download.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ImpRecu.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ImpRecu.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        recuPdf(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
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
