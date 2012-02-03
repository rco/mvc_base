package com.rodcez.controller {
	import com.rodcez.model.vo.UserVO;
	
	import org.robotlegs.mvcs.Command;
	import com.rodcez.services.UserServiceInterface;
	
	
	public class UpdateUserCommand extends Command {
		
		[Inject]
		public var updateUser : UserVO;
		
		[Inject]
		public var userService : UserServiceInterface;
		
		override public function execute():void {
			userService.updateUser(updateUser);
		}
	}
}