package com.example;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class QuizService<questionsid> {
	
	@Autowired
	private QuizRepo repo;
	
	public List<QuizCompetition> findque(int quizid) {
		List<QuizCompetition> questionss = repo.findByQuizid(quizid);
		return questionss;
	}

}
