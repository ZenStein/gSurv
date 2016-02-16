# get '/surveys/results' do
#   erb :'surveys/results'
# end
#
# get '/surveys/new' do
#   if !logged_in?
#     redirect '/'
#   end
#   @user = session[:user]
#   erb :'surveys/new'
# end
#
# post '/surveys/new' do
#   #@test = params
#   # logger.info params.inspect
#    @user = User.find(session[:id])
#
#    survey = Survey.new(name: params[:name])
#    survey.save
#    @user.surveys << survey
#    @questions = params[:questions] #<- Array of question string
#    @answers = params[:answers] #<- Hash where key is index and value is array.
#   @questions.each_with_index do |question, index|
#        q = Question.new(question: question)
#        q.save
#        survey.questions << q
#        @answers[index.to_s].each do |answer|
#           a = Answer.new(answer: answer)
#           a.save
#           q.answers << a
#        end
#   end
#   # @test = Survey.new_survey(@params, @user)
#   # p @test
#   erb :'surveys/new'
# end
#
# get '/surveys/show' do
#   erb :'surveys/show'
# end
# get '/surveys/list' do
#   @user = User.find(session[:id])
#   @surveys = Survey.all
#   erb :'surveys/list'
# end
# get '/surveys/list/:survey_id' do
#   @survey = Survey.find(params['survey_id'])
#   @questions = @survey.questions
#   erb :'surveys/list/id'
# end
#
# get '/surveys/:id' do
#     @user = User.find(params['id'])
#   if authenticate(@user)
#   @params = params[:id]
#   @created_surveys = Survey.user_created(@user)
#   #@taken_surveys = Survey.user_taken(@user)
#   erb :'surveys/show'
#   else
#     logout
#    redirect '/'
#  end
#
# end
