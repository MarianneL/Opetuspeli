package
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Drag extends MovieClip
	{
		var juttu:Juttu;
		
		var dragHere:DragHere = new DragHere();
		
		public function Drag()
		{
			this.buttonMode = true;
			
			this.addEventListener(MouseEvent.MOUSE_DOWN, DragginBegins);
			this.addEventListener(MouseEvent.MOUSE_UP, DragginStops);
		}

		public function DragginBegins(event:MouseEvent)
		{
			startDrag();
		}
		
		public function DragginStops(event:MouseEvent)
		{
			stopDrag();
			if(this.hitTestObject(dragHere))
				trace("gsdgdfag");
		}
		
	}
}