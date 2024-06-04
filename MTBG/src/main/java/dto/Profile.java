package dto;

import java.io.Serializable;

public class Profile implements Serializable {

    private static final long serialVersionUID = -4274700572038677000L;

    private String instaId;          // 사용자 ID // 프로필 ID(중복 X)
    private String nickname;         // 사용자 이름 // (중복 가능)
    private int age;                 // 사용자 나이
    private String gender;           // 사용자 성별
    private String hobbies;          // 사용자 취미
    private String major;            // 사용자 학과
    private String city;             // 사용자 거주 도시
    private String district;         // 사용자 거주 구역
    private String bio;              // 사용자 자기소개
    private String profileImage;     // 사용자 프로필 이미지

    public Profile() {
        super();
    }

    public Profile(String instaId, String nickname, int age, String gender) {
        this.setInstaId(instaId);
        this.nickname = nickname;
        this.setAge(age);
        this.gender = gender;
    }

    public String getInstaId() {
        return instaId;
    }

    public void setInstaId(String instaId) {
        if (instaId == null || instaId.trim().isEmpty()) {
            throw new IllegalArgumentException("Instagram ID cannot be null or empty");
        }
        this.instaId = instaId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        if (age < 0) {
            throw new IllegalArgumentException("Age cannot be negative");
        }
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHobbies() {
        return hobbies;
    }

    public void setHobbies(String hobbies) {
        this.hobbies = hobbies;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    @Override
    public String toString() {
        return "Profile{" +
                "instaId='" + instaId + '\'' +
                ", nickname='" + nickname + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", hobbies='" + hobbies + '\'' +
                ", major='" + major + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", bio='" + bio + '\'' +
                ", profileImage='" + profileImage + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Profile profile = (Profile) o;

        return instaId != null ? instaId.equals(profile.instaId) : profile.instaId == null;
    }

    @Override
    public int hashCode() {
        return instaId != null ? instaId.hashCode() : 0;
    }
}
