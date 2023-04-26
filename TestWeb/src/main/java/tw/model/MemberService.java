package tw.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberRepository mRepo;
	
	public List<Member> findAll() {
		return mRepo.findAll();
	}
	
	public Member findByAccount(String account) {
		return mRepo.findByAccount(account);
	}
	
	public void save(Member member) {
		mRepo.save(member);
	}
	
	public void deleteAll() {
		mRepo.deleteAll();
	}
	
}
