/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.FlightInforDao;
import java.io.IOException;
import util.Util;
import java.sql.Date;
import java.sql.Time;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.FlightInfor;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class SaveInforServlet extends HttpServlet {

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
        processRequest(request, response);
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
        HttpSession session = request.getSession(true);
        FlightInforDao fDao = new FlightInforDao();
        String type = request.getParameter("type");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        Date departuringDate = Date.valueOf(request.getParameter("departure"));

        FlightInfor flightInfor = fDao.getFlightInfor(from, to);
        flightInfor.setTravelDate(departuringDate);
        Time departTime = Util.generateRandomTime();
        flightInfor.setDepartTime(departTime);
        Time arrivalTime = new Time(departTime.getTime() + flightInfor.getHour().getTime());
        flightInfor.setArrivalTime(arrivalTime);

        session.setAttribute("flightInfor", flightInfor);
        if (type.equals("round-trip")) {
            Date returingDate = Date.valueOf(request.getParameter("departure"));
            FlightInfor flightInfor2 = fDao.getFlightInfor(to, from);
            flightInfor2.setTravelDate(returingDate);
            Time departTime2 = Util.generateRandomTime();
            flightInfor2.setDepartTime(departTime2);
            Time arrivalTime2 = new Time(departTime2.getTime() + flightInfor2.getHour().getTime());
            flightInfor2.setArrivalTime(arrivalTime2);
            session.setAttribute("returningFlightInfor", flightInfor2);
        }
        if(session.getAttribute("user")!=null){
            response.sendRedirect("booking");
        }else{
            response.sendRedirect("login");
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
