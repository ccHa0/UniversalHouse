package tw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.model.Member;
import tw.model.MemberService;

@Controller
@RequestMapping("/login")
public class LoginAction {

	@Autowired
	private MemberService mService;

	@PostMapping("/loginCheck")
	public String loginCheck(@Param("account") String account, @Param("password") String password) {

		Member member = mService.findByAccount(account);

		if (member != null) {
			return member.getPassword().equals(password) ? "/loginOk" : "/";

		}

		return "/loginFail";
	}

	@GetMapping("/register")
	public String memberInfo() {
		return "/register";
	}

	@PostMapping("/member")
	public String register(@Param("account") String account, @Param("password") String password,
			@Param("name") @Nullable String name, @Param("phone") @Nullable String phone,
			@Param("city") @Nullable String city, @Param("email") @Nullable String email,
			@Param("photo") @Nullable byte[] photo) {

		Member member = new Member();

		member.setAccount(account);
		member.setPassword(password);
		member.setName(name = name.isEmpty() ? name : "default");
		member.setPhone(phone);
		member.setCity(city);
		member.setEmail(email);
		member.setCreateTime(new java.sql.Timestamp(System.currentTimeMillis()));
		member.setUpdateTime(new java.sql.Timestamp(System.currentTimeMillis()));
		member.setPhoto(photo);
		member.setRole("USERS");

		mService.save(member);

		return "/registerOk";

	}

	@DeleteMapping("/delete")
	public void clear() {
		mService.deleteAll();
	}
}
