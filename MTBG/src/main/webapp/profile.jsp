<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Profile"%>
<%@ page import="dao.ProfileRepository" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>프로필 정보</title>
</head>
<body>
<div class="container py-4">
    <%@ include file="menu.jsp"%>

    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">프로필 정보</h1>
            <p class="col-md-8 fs-4">Profile Info</p>
        </div>
    </div>

    <%
        String userId = request.getParameter("userId");
        ProfileRepository dao = ProfileRepository.getInstance();
        Profile profile = dao.getProfileById(userId);

        if (profile == null) {
    %>
        <div class="alert alert-danger" role="alert">
            프로필을 찾을 수 없습니다.
        </div>
    <%
        } else {
            String imagePath = request.getContextPath() + "/profile_images/" + profile.getProfileImage();
    %>
    
    <div class="row align-items-md-stretch">
        <div class="col-md-12">
            <h3><b><%= profile.getNickname() %></b></h3>
            <p><b>인스타 ID: </b><span class="badge text-bg-danger"><%= profile.getInstaId() %></span></p>
            <p><b>나이: </b><%= profile.getAge() %></p>
            <p><b>성별: </b><%= profile.getGender() %></p>
            <p><b>취미: </b><%= profile.getHobbies() %></p>
            <p><b>학과: </b><%= profile.getMajor() %></p>
            <p><b>거주 도시: </b><%= profile.getCity() %></p>
            <p><b>거주 구역: </b><%= profile.getDistrict() %></p>
            <p><b>자기소개: </b><%= profile.getBio() %></p>
            <p><b>프로필 이미지: </b><img src="<%=profile.getProfileImage() %>" alt="프로필 이미지" class="img-fluid"></p>
        </div>
    </div>
    <%
        }
    %>

    <jsp:include page="footer.jsp" />
</div>
</body>
</html>
