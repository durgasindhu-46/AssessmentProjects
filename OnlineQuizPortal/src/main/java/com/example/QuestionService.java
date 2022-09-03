package com.example;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class QuestionService {
	
	@Autowired
	private QuestionRepo repo;
	
	@Autowired
	private QuizRepo repo1;

	public Questions addQuestion(Questions q) {
		// TODO Auto-generated method stub
		return repo.save(q);
	}

	public List<Questions> getAllQuestion() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	public boolean deleteQuestion(int id) {

			if(repo.findById(id).isPresent())
			{
				repo.deleteById(id);
				return true;
			}
			else
				return false;
		}

	public Questions getQuestionById(int id) {
		if(repo.findById(id).isPresent()) 
			return repo.findById(id).get();
		else 
			return null;
	}
	
	public QuizCompetition addQuiz(QuizCompetition q) {
		// TODO Auto-generated method stub
		return repo1.save(q);
	}
	

}