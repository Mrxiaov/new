public class Student {
    private String name;
    private String age;
    private String address;

    private String sid;

    public Student() {
    }

    public Student(String name, String age, String address, String sid) {
        this.name = name;
        this.age = age;
        this.address = address;
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }
}
