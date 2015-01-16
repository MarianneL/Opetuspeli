package
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Juttu extends MovieClip
	{
		var mainClass:Engine;
		var scoreHud:ScoreHud;
		
		public function Juttu(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			klikkaa.addEventListener(MouseEvent.CLICK, klikattu);
			drag.addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
			drag.addEventListener(MouseEvent.MOUSE_UP, mouseUp);
			
			drag.buttonMode = true;
		}
		
		
		public function mouseDown(event:MouseEvent)
		{
			var object = event.target;
			object.startDrag();
		}
		
		public function mouseUp(event:MouseEvent)
		{
			var object = event.target;
			
			if(drag.x > 220 && drag.x < 260)
			{
				drag.x = 240;
				drag.y = 170;
				endLevel();
				// Tämän jälkeen "Juttu" pitää poistaa näyttämöltä ja ukkeli laittaa sinne minne kuuluu
			}
			else
			{
				drag.x = 40;
				drag.y = 30;
			}
			
			object.stopDrag();
		}
		
		public function klikattu(event:MouseEvent)
		{
			mainClass.naytaPeliNakyma();
		}
		
		public function endLevel()
		{
			mainClass.updateTheScore();
			this.gotoAndStop("loppu");
		}
	}
}