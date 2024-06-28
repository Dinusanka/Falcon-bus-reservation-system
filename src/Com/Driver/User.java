package Com.Driver;

public class User {
    private int id;
    private String name;
    private String username;

    public User(int id, String name, String username) {
        this.id = id;
        this.name = name;
        this.username = username;
    }

    public void displayUserProfile() {
        System.out.println("ID: " + id);
        System.out.println("Name: " + name);
        System.out.println("Username: " + username);
    }
}
