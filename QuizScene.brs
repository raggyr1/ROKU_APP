sub Init()
    m.top.findNode("timerLabel").text = "Time: 10" 


    m.questionLabel = m.top.findNode("questionLabel")
    m.answerA = m.top.findNode("answerA")
    m.answerB = m.top.findNode("answerB")
    m.answerC = m.top.findNode("answerC")
    m.answerD = m.top.findNode("answerD")
    
    m.questionLabel.text = "What is the capital of France?"
    m.answerA.text = "A. Paris"
    m.answerB.text = "B. Rome"
    m.answerC.text = "C. Berlin"
    m.answerD.text = "D. Madrid"

    m.label = m.top.findNode("timerLabel")
    m.timeRemaining = 10  

    m.timer = m.top.findNode("countdownTimer")
    m.timer.observeField("fire", "onCountdownUpdate") 
    m.timer.control = "start" 
end sub

sub onCountdownUpdate()
    m.timeRemaining -= 1
    m.label.text = "Time: " + str(m.timeRemaining)

    if m.timeRemaining <= 0 then
        m.timer.control = "stop"
        m.label.text = "Time's up!"
    end if
end sub
