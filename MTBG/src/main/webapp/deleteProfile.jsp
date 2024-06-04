<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dao.ProfileRepository" %>
<%
    // 사용자 ID (InstaId) 가져오기
    String instaId = request.getParameter("userId");

    // 입력 값 검증
    if (instaId != null && !instaId.isEmpty()) {
        // DAO 객체 가져오기
        ProfileRepository dao = ProfileRepository.getInstance();
        
        try {
            // 프로필 삭제
            dao.removeProfile(instaId);
        } catch (Exception e) {
            e.printStackTrace();
            // 오류 발생 시 오류 페이지로 리디렉션 또는 오류 메시지 출력
            out.println("프로필 삭제 중 오류가 발생했습니다.");
        }
    }
    
    // 프로필 목록 페이지로 리디렉션
    response.sendRedirect("profiles.jsp");
%>
