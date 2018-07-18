package grailsquiz

class UserController {
    /*def scaffold = true;*/
    def index(){
        redirect(action: "list")
    }
    def list(){
        def users=User.findAll()
        render(view: "list", model: [u:users])
    }
    def create(){
    render(view: "create")
    }
    def edit(){
        def id=params.id

        println("ID is : "+id)
        def user=User.findById(id)
        render(view: "edit",model: [u: user])
    }
    def delete(){
        def id=params.id
        def user=User.findById(id)
        user.delete()


        redirect(action: "list")
        println("ID is : + id")

    }
    def show(){
        def user=User.findById(params.id)
        render(view:"show",model: [u: user])
    }
    def save(){
        def name=params.name
        def email=request.getParameter("email")
        def password=request.getParameter("password")

        User user=new User();
        user.name=name
        user.email=email
        user.password=password

        user.save()

        redirect(action: "list")
    }
    def update(){
        def user=User.findById(params.id)
        user.name=params.name
        user.email=params.email
        user.password=params.password

        user.save()

        redirect(action: "list")

    }

    def login(){
        render(view: "login")
    }

    def dashboard(){
        def email=params.email
        def password=params.password

        def user=User.findByEmailAndPassword(email,password)
        if(user){
            session["user"]=user
            render(view: "dashboard")
        }
    }

}
