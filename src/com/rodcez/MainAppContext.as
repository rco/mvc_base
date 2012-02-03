package com.rodcez
{
	import com.rodcez.model.UserModel;
	import com.rodcez.services.UserServiceInterface;
	import com.rodcez.signals.UserUpdate;
	import com.rodcez.signals.UserUpdated;
	import com.rodcez.view.components.DummyDataView;
	import com.rodcez.view.mediators.DummyDataMediator;
	
	import org.robotlegs.mvcs.Context;

	public class MainAppContext extends Context
	{
		public function MainAppContext() { super(); }
		
		override public function startup():void {
			// Controller
			/*signalCommandInterceptionMap.mapSignalClass(StartupAp, StartupAppCommand);*/
			/*commandMap.mapEvent(SystemEvent.CLEAR_MESSAGES_REQUESTED, TryClearMessages);*/
			// Model
			injector.mapSingleton(UserModel);
			// Services
			/*injector.mapClass(IUserService, );*/
			// Signals
			injector.mapSingleton(UserUpdate);
			injector.mapSingleton(UserUpdated);
			// View
			mediatorMap.mapView(DummyDataView, DummyDataMediator);
			// Startup complete
			super.startup();
		}
	}
}