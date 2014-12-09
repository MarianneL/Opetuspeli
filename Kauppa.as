package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	import KeyObject;
	
	public class Kauppa extends MovieClip
	{
		var leftPressed:Boolean = false;
		var rightPressed:Boolean = false;
		
		var xSpeed:int = 10;
		var scrollX:int = 0;
		var speedConstant:int = 20; 
		var friction:Number = 0.75;
		var maxSpeedConstant:Number = 20;
		
		var mainClass:Engine;
		
		public function Kauppa(stage:Stage)
		{			
			
		}
		

		
		
	}
}
