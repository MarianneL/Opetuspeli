package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Automaatti6 extends MovieClip
	{
		
		public function Automaatti6()
		{
			trace("automaatti6");
			napukka6.addEventListener(MouseEvent.CLICK, klikattu);
		}
		
		public function klikattu(event:MouseEvent)
		{
			parent.removeChild(this);
		}
	}
}