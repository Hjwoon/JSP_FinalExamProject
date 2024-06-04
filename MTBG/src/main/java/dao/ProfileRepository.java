package dao;

import dto.Profile;
import java.util.ArrayList;

public class ProfileRepository {

    private ArrayList<Profile> listOfProfiles = new ArrayList<>();
    private static ProfileRepository instance = new ProfileRepository();

    // 싱글톤 인스턴스 반환
    public static ProfileRepository getInstance() {
        return instance;
    }

    // 초기 프로필 데이터를 생성하는 생성자
    private ProfileRepository() {
        Profile profile1 = new Profile("7h.05m", "안농22", 22, "여성");
        profile1.setHobbies("베이스 치기, 구경다니면서 사진 찍기");
        profile1.setMajor("컴퓨터공학과");
        profile1.setCity("서울시");
        profile1.setDistrict("도봉구");
        profile1.setBio("밋더부기의 개발자예요~");
        profile1.setProfileImage("profile_images/user1.jpg");
        listOfProfiles.add(profile1);

        Profile profile2 = new Profile("bluecages", "니남친지나간다", 27, "남성");
        profile2.setHobbies("전시회, 그림그리기, 연기");
        profile2.setMajor("경영학과");
        profile2.setCity("서울시");
        profile2.setDistrict("용산구");
        profile2.setBio("안녕하세요. 좋은 인연 만들고 싶어요!");
        profile2.setProfileImage("profile_images/user2.jpg");
        listOfProfiles.add(profile2);

        Profile profile3 = new Profile("im_iam", "노원토박이", 25, "남성");
        profile3.setHobbies("운동, 밴드부 보컬");
        profile3.setMajor("체육교육과");
        profile3.setCity("경기도");
        profile3.setDistrict("의정부시");
        profile3.setBio("안녕하세요ㅎㅎ 운동 좋아하는 20대남입니다~ 반가워요!");
        profile3.setProfileImage("profile_images/user3.jpg");
        listOfProfiles.add(profile3);
    }

    // 모든 프로필을 반환하는 메소드
    public ArrayList<Profile> getAllProfiles() {
        return listOfProfiles;
    }

    // InstaId로 프로필을 찾는 메소드
    public Profile getProfileById(String instaId) {
        for (Profile profile : listOfProfiles) {
            if (profile.getInstaId().equals(instaId)) {
                return profile;
            }
        }
        return null;
    }

    // 새로운 프로필을 추가하는 메소드
    public void addUser(Profile profile) {
    	listOfProfiles.add(profile);
    }

    // 프로필을 삭제하는 메소드
    public void deleteProfile(String instaId) {
    	listOfProfiles.removeIf(profile -> profile.getInstaId().equals(instaId));
    }
}
