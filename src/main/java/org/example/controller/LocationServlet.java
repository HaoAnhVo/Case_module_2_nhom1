package org.example.controller;

import org.example.model.Location;
import org.example.service.locationService.LocationService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LocationServlet", urlPatterns = "/LocationServlet")
public class LocationServlet extends HttpServlet {
    private LocationService locationService;

    @Override
    public void init() {
        locationService = new LocationService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Location> locations = locationService.getAllLocations();
        request.setAttribute("locations", locations);
        RequestDispatcher dispatcher = request.getRequestDispatcher("destination.jsp");
        dispatcher.forward(request, response);
    }
}
