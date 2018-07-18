
import grailsquiz.User
class BootStrap {

    def init = { servletContext ->

        User user = new User()
        user.name="suyoj"
        user.email="suyoj@gmail.com"
        user.password="6090"
        user.save()
    }
    def destroy = {
    }
}
