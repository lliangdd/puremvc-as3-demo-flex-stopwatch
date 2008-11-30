/*
 PureMVC Demo for AS3 - StopWatch
 Copyright(c) 2008 Cliff Hall <cliff.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
*/
package org.puremvc.as3.demos.flex.stopwatch
{
	import org.puremvc.as3.demos.flex.stopwatch.controller.EnsureTimerCommand;
	import org.puremvc.as3.demos.flex.stopwatch.controller.FreezeDisplayCommand;
	import org.puremvc.as3.demos.flex.stopwatch.controller.ResetDisplayCommand;
	import org.puremvc.as3.demos.flex.stopwatch.controller.StartupCommand;
	import org.puremvc.as3.demos.flex.stopwatch.controller.StopTimerCommand;
	import org.puremvc.as3.patterns.facade.Facade;

	public class ApplicationFacade extends Facade
	{
		
	 	public static const STARTUP:String			= "startup";
	 	public static const ENSURE_TIMER:String		= "ensureTimer";
	 	public static const RESET_DISPLAY:String	= "resetDisplay";
	 	public static const FREEZE_DISPLAY:String	= "freezeDisplay";
	 	public static const STOP_TIMER:String		= "stopTimer";
	 	
	 
		public static function getInstance() : ApplicationFacade 
		{
			if (instance == null) instance = new ApplicationFacade();
			return instance as ApplicationFacade;
		}
	
		public function startup ( app:StopWatch ) : void
		{
			sendNotification( STARTUP, app );
		}
	
		override protected function initializeController () : void
		{
			super.initializeController();
			registerCommand( STARTUP, 		StartupCommand );	
			registerCommand( ENSURE_TIMER, 	EnsureTimerCommand );	
			registerCommand( RESET_DISPLAY, ResetDisplayCommand );	
			registerCommand( FREEZE_DISPLAY,FreezeDisplayCommand );	
			registerCommand( STOP_TIMER, 	StopTimerCommand );	
		}
	}
}