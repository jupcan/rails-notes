class Question
  attr_accessor :prompt, :answer
  def initialize(prompt,answer)
    @prompt=prompt
    @answer=answer
  end
end

p1="what color are apples?\na)red\nb)purple\nc)orange"
p2="what color are bananas?\na)pink\nb)red\nc)yellow"
p3="what color are pears?\na)yellow\nb)green\nc)orange"
questions=[Question.new(p1,"a"),Question.new(p2,"c"),Question.new(p3,"b")]

def run(questions)
  answer=""
  score=0
  for question in questions
    puts question.prompt
    answer=gets.chomp()
    if answer==question.answer
      score+=1
    end
  end
  puts("you got "+score.to_s+"/"+questions.length().to_s)
end

run(questions)
