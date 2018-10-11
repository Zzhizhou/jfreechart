/**
 * Created by Administrator on 2018/10/10.
 */
public class User {
    private String address;
    private String name;
    private String tel;
    private String basic;
    public User() {
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getBasic() {
        return basic;
    }

    public void setBasic(String basic) {
        this.basic = basic;
    }

    @Override
    public String toString() {
        return "User{" +
                "address='" + address + '\'' +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", basic='" + basic + '\'' +
                '}';
    }
}
