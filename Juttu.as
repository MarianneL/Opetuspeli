package
{
	import Engine;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	
	public class Juttu extends MovieClip
	{
		var mainClass:Engine;
		
		public function Juttu(stage:Stage)
		{
			//klikkaa.addEventListener(MouseEvent.CLICK, klikattu);
		}
		
		public function klikattu(event:MouseEvent)
		{
			mainClass.naytaPeliNakyma();
		}
	}
}