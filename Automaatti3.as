package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Automaatti3 extends MovieClip
	{
		var automaatti4:Automaatti4;
		
		public function Automaatti3()
		{
			trace("automaatti3");
			napukka3.addEventListener(MouseEvent.CLICK, klikattu);
		}
		
		public function klikattu(event:MouseEvent)
		{
			automaatti4 = new Automaatti4();
			parent.removeChild(this);
			addChild(automaatti4);
		}
	}
}