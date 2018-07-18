package grailsquiz

class QuestionController {

    /*def scaffold = true;*/

    def index() {
        redirect(action: "list")
    }

    def list() {
        def question = Question.findAll()



      /*  println "question = $question.question"*/
        render(view: "list" , model: ['q': question])
    }

    def create() {
        render(view: "create")
    }

    def save() {
        def question = request.getParameter("question")
        def option1 = request.getParameter("option1")
        def option2 = request.getParameter("option2")
        def option3 = request.getParameter("option3")
        def option4 = request.getParameter("option4")
        def correctanswer = request.getParameter("correctanswer")
        def category = request.getParameter("category")

        Question question1 = new Question()
        question1.question = question
        question1.option1 = option1
        question1.option2 = option2
        question1.option3 = option3
        question1.option4 = option4
        question1.correctanswer = correctanswer
        question1.category = category

        question1.save()
        render(view: "list")
    }
    def update(){
        def question=Question.findById(params.id)
        question.question=params.question
        question.option1=params.option1
        question.option2=params.option2
        question.option3=params.option3
        question.option4=params.option4
        question.correctanswer=params.correctanswer
        question.category=params.category
        question.save()

        redirect(action:"list")

    }
        def edit(){
            def id=params.id
            def question=Question.findById(id)
            render(view: "edit",model: [q: question])
        }

        def delete(){
            def id=params.id
            def question=Question.findById(id)

            question.delete()
            redirect(action:  "list")
        }
    def show(){
        def id=params.id
        def question=Question.findById(id)

        render(view: "show",model: ["q":question])
    }
    def playquiz(){
        def questions = Question.findAll()

        render(view: "playquiz" , model: [q:questions.first()])

    }

    def playquiznext(){
        def questionId = params.id
        def correctAnswer = params.correctanswer
        def checkedAnswer = params.option

        if(checkedAnswer.equalsIgnoreCase(correctAnswer)){
            Result result = new Result()
            result.question = Question.get(questionId)
            result.user = User.get(session.user.id)
            result.marks=5
            result.save()

        }else{
            Result result = new Result()
            result.question = Question.get(questionId)
            result.user = User.get(session.user.id)
            result.marks=0
            result.save()
        }

        def resultList = Result.findAllByUser(session.user)

        def questionnotPlayed = Question.findAllByIdNotInList(resultList.question.id)

        render(view: "playquiz",model: [q:questionnotPlayed.first()])

    }
}