package bean_admin;
import admin_servlet.ShippingDetailsDAO;
public class ShippingDetails {
    private int id;
    private String firstName;
    private String lastName;
    private String address;
    private String country;
    private String phoneNumber;
    private String zipCode;
    private String city;
    private String state;

    // Default constructor
    public ShippingDetails() {
    }

    // Parameterized constructor
    public ShippingDetails(int id, String firstName, String lastName, String address, String country, String phoneNumber, String zipCode, String city, String state) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.zipCode = zipCode;
        this.city = city;
        this.state = state;
    }

    // Getter methods for each attribute
    public int getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getAddress() {
        return address;
    }

    public String getCountry() {
        return country;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getZipCode() {
        return zipCode;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }
}
