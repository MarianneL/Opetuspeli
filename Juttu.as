package
{
	import Engine;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Juttu extends MovieClip
	{
		var mainClass:Engine;
		
		public function Juttu(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;

			klikkaa.addEventListener(MouseEvent.CLICK, klikattu);
		}

		
		public function klikattu(event:MouseEvent)
		{
			mainClass.naytaPeliNakyma();
		}
		
		public function endLevel()
		{
			this.gotoAndStop("loppu");
		}
	}
}