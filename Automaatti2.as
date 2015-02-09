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
			napukka2.addEventListener(MouseEvent.CLICK, klikattu2);
		}
		
		public function klikattu2(event:MouseEvent)
		{
			
		}
		
		public function Jee():void
		{
			trace("automaatti3");
			automaatti3 = new Automaatti3();
			addChild(automaatti3);
		}
	}
}