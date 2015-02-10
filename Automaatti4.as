package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Automaatti4 extends MovieClip
	{
		var automaatti5:Automaatti5;
		
		public function Automaatti4()
		{
			trace("automaatti4");
			napukka4.addEventListener(MouseEvent.CLICK, klikattu);
		}
		
		public function klikattu(event:MouseEvent)
		{
			automaatti5 = new Automaatti5();
			parent.removeChild(this);
			addChild(automaatti5);
		}
	}
}