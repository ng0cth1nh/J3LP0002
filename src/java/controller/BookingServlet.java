/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.FlightDao;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Flight;
import model.FlightInfor;
import model.User;
import util.Util;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class BookingServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        request.getRequestDispatcher("view/booking.jsp").forward(request, response);
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
        FlightDao fDao = new FlightDao();
        HttpSession session = request.getSession();

        User u = (User) session.getAttribute("user");
        String type = (String) session.getAttribute("type");

        FlightInfor flightInfor = (FlightInfor) session.getAttribute("flightInfor");
        String fid = Util.generateRandomID(10);
        String code = Util.generateRandomID(6).toUpperCase();
        while (fDao.checkCodeExist(code) || fDao.checkIdExist(fid)) {
            if (fDao.checkCodeExist(code)) {
                code = Util.generateRandomID(6).toUpperCase();
            }
            if (fDao.checkIdExist(fid)) {
                fid = Util.generateRandomID(10);
            }
        }
        long millis = System.currentTimeMillis();
        Date issueDate = new Date(millis);
        boolean isOneway = true;
        
        
        if (type.equals("round-trip")) {
            isOneway = false;
            FlightInfor returningFlightInfor = (FlightInfor) session.getAttribute("returningFlightInfor");
            String reFid = Util.generateRandomID(10);
            String reCode = Util.generateRandomID(6).toUpperCase();
            while (fDao.checkCodeExist(reCode) || fDao.checkIdExist(reFid)) {
                if (fDao.checkCodeExist(reCode)) {
                    reCode = Util.generateRandomID(6).toUpperCase();
                }
                if (fDao.checkIdExist(reFid)) {
                    reFid = Util.generateRandomID(10);
                }
            }
            Flight reFlight = new Flight(reFid, reCode, issueDate, isOneway, returningFlightInfor);
            fDao.insertFlight(reFlight, u.getId());
        }
        Flight f = new Flight(fid, code, issueDate, isOneway, flightInfor);
        fDao.insertFlight(f, u.getId());
        response.sendRedirect("manage-booking");

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
