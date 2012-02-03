package com.rodcez.signals {
	import com.rodcez.model.vo.UserVO;
	
	import org.osflash.signals.Signal;
	
	
	public class UserUpdate extends Signal{
		
		public function UserUpdate() {
			super(UserVO);
		}
	}
}