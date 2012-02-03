package com.rodcez.controller {
	import com.rodcez.model.vo.UserVO;
	import com.rodcez.services.UserServiceInterface;
	
	import org.robotlegs.mvcs.Command;
	
	
	public class AddUserCommand extends Command {
		
		[Inject]
		public var user : UserVO;
		
		[Inject]
		public var userService : UserServiceInterface;
		
		override public function execute():void {
			if(user == null){
				user = new UserVO();
				user.name = "User Example";
				user.email = "user@example.com"
				user.active = false;
			}
			userService.addUser(user);
		}
	}
}