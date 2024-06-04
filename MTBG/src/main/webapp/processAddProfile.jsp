<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Profile"%>
<%@ page import="dao.ProfileRepository"%>
<%@ page import="java.io.IOException"%>
<%@ page import="jakarta.servlet.ServletException"%>
<%@ page import="jakarta.servlet.http.HttpServlet"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<%@ page import="jakarta.servlet.http.HttpServletResponse"%>
<%
    request.setCharacterEncoding("UTF-8");

    String instaId = request.getParameter("instaId");
    String nickname = request.getParameter("nickname");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String city = request.getParameter("city");
    String district = request.getParameter("district");
    String hobbies = request.getParameter("hobbies");
    String major = request.getParameter("major");
    String bio = request.getParameter("bio");

    int userAge = 0;
    if (age != null && !age.isEmpty()) {
        try {
            userAge = Integer.parseInt(age);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid age format");
            return;
        }
    }

    ProfileRepository dao = ProfileRepository.getInstance();

    Profile newProfile = new Profile();
    newProfile.setInstaId(instaId);
    newProfile.setNickname(nickname);
    newProfile.setAge(userAge);
    newProfile.setGender(gender);
    newProfile.setCity(city);
    newProfile.setDistrict(district);
    newProfile.setHobbies(hobbies);
    newProfile.setMajor(major);
    newProfile.setBio(bio);

    try {
        dao.addUser(newProfile);
        response.sendRedirect("profiles.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to add user");
    }
%>
