<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>프로필 등록</title>
</head>
<body>
<div class="container py-4">
    <%@ include file="menu.jsp"%>    

    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">프로필 등록</h1>
            <p class="col-md-8 fs-4">Profile Registration</p>      
        </div>
    </div>
  
    <div class="row align-items-md-stretch">     
        <form name="newProfile" action="./processAddProfile.jsp" method="post">          
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">닉네임<br> (INSTAGRAM ID, 필수)</label>
                <div class="col-sm-3">
                    <input type="text" name="instaId" class="form-control" placeholder="Instagram ID" required>
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">이름<br>(선택)</label>
                <div class="col-sm-3">
                    <input type="text" name="nickname" class="form-control" placeholder="Nickname">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">나이</label>
                <div class="col-sm-3">
                    <input type="number" name="age" class="form-control" placeholder="Age" min="0">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">성별</label>
                <div class="col-sm-3">
                    <select name="gender" class="form-select">
                        <option value="남성">남성</option>
                        <option value="여성">여성</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">거주 지역</label>
                <div class="col-sm-2">
                    <select name="city" class="form-select">
                        <option value="서울특별시">서울특별시</option>
                        <option value="경기도">경기도</option>
                        <option value="강원도">강원도</option>
                        <option value="인천광역시">인천광역시</option>
                        <option value="충청북도">충청북도</option>
                        <option value="충청남도">충청남도</option>
                        <option value="세종특별자치시">세종특별자치시</option>
                        <option value="대전광역시">대전광역시</option>
                        <option value="경상북도">경상북도</option>
                        <option value="경상남도">경상남도</option>
                        <option value="대구광역시">대구광역시</option>
                        <option value="울산광역시">울산광역시</option>
                        <option value="부산광역시">부산광역시</option>
                        <option value="전라북도">전라북도</option>
                        <option value="전라남도">전라남도</option>
                        <option value="광주광역시">광주광역시</option>
                        <option value="제주특별자치도">제주특별자치도</option>
                    </select>
                </div>
                <div class="col-sm-3">
                    <input type="text" name="district" class="form-control" placeholder="구를 입력하세요" required>
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">취미</label>
                <div class="col-sm-5">
                    <input type="text" name="hobbies" class="form-control" placeholder="Hobbies">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">학과</label>
                <div class="col-sm-5">
                    <input type="text" name="major" class="form-control" placeholder="Major">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">자기소개</label>
                <div class="col-sm-5">
                    <textarea name="bio" cols="50" rows="4" class="form-control" placeholder="간단한 자기소개를 적어주세요"></textarea>
                </div>
            </div>            
            <div class="mb-3 row">
                <div class="col-sm-offset-2 col-sm-10 ">
                    <input type="submit" class="btn btn-primary" value="등록">
                </div>
            </div>
        </form>
    </div>
    <%@ include file="footer.jsp"%>
</div>  
</body>
</html>
