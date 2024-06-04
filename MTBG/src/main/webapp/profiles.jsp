<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Profile"%>
<%@ page import="dao.ProfileRepository" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>프로필 목록</title>
</head>
<body>
<div class="container py-4">
    <%@ include file="menu.jsp"%>

    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">매칭을 기다리고 있어요!</h1>
            <p class="col-md-8 fs-4">ProfileList</p>
        </div>
    </div>

    <%
        ProfileRepository dao = ProfileRepository.getInstance();
        ArrayList<Profile> listOfProfiles = dao.getAllProfiles();
    %>

    <div class="row align-items-md-stretch text-center">
    <%
        for (Profile profile : listOfProfiles) {
            String imagePath = request.getContextPath() + profile.getProfileImage();
    %>    
    
    <div class="col-md-4">
        <div class="h-100 p-2">
            <img src="<%=profile.getProfileImage()%>" alt="Profile Image" style="width: 200px; height: 200px;" />        
            <h5><b><%= profile.getNickname() %></b></h5>
            <p><%= profile.getAge() %>세 | <%= profile.getGender() %></p>
            <p><%= profile.getCity() %>, <%= profile.getDistrict() %></p>
            <p><%= profile.getMajor() %></p>
            <p><a href="<%= request.getContextPath() %>/profile.jsp?userId=<%= profile.getInstaId() %>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a></p>
        </div>
    </div>
    <%
        }
    %>
    </div>
    <%@ include file="footer.jsp"%>
</div>
</body>
</html>
