package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Automaatti5 extends MovieClip
	{
		var automaatti6:Automaatti6;
		
		public function Automaatti5()
		{
			trace("automaatti5");
			napukka5.addEventListener(MouseEvent.CLICK, klikattu);
		}
		
		public function klikattu(event:MouseEvent)
		{
			automaatti6 = new Automaatti6();
			addChild(automaatti6);
		}
	}
}