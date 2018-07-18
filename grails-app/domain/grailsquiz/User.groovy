package grailsquiz

class User {
    String name;
    String password;
    String email;
    Date created = new Date()
    static constraints = {
        name(blank: false)
        password(blank: false)
        email(blank: false)
    }
}
