package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Automaatti2 extends MovieClip
	{
		var automaatti3:Automaatti3;
		
		public function Automaatti2()
		{
			trace("automaatti2");
			napukka2.addEventListener(MouseEvent.CLICK, klikattu);
		}
		
		public function klikattu(event:MouseEvent)
		{
			automaatti3 = new Automaatti3();
			addChild(automaatti3);
		}
	}
}