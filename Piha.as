package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	import KeyObject;
	
	public class Piha extends MovieClip
	{
		var leftPressed:Boolean = false;
		var rightPressed:Boolean = false;
		
		var xSpeed:int = 10;
		var scrollX:int = 0;
		var speedConstant:int = 20; 
		var friction:Number = 0.75;
		var maxSpeedConstant:Number = 20;
		
		var mainClass:Engine;
		
		public function Piha(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;	
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler); // Tarkistaa painetaanko näppäintä parhaillaan
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUpHandler); // Tarkistaa että näppäintä ei parhaillaan paineta
			stage.addEventListener(Event.ENTER_FRAME, loop);
			
			kaupanOvi.addEventListener(MouseEvent.CLICK, kaupanOviPainettu)
		}
		
		function loop(e:Event):void
		{	
			if(leftPressed) // jos vasen näppäin on pohjassa...
				xSpeed -= speedConstant; //... tausta liikkuu yhteen suuntaan...
			else if(rightPressed) //... ja jos oikea näppäin on pohjassa...
				xSpeed += speedConstant; //... niin tausta liikkuu toiseen suuntan :)
			
			if(xSpeed > maxSpeedConstant) // Liikutaan oikealle
				xSpeed = maxSpeedConstant;
			else if(xSpeed < (maxSpeedConstant * -1)) // Liikutaan vasemmalle
				xSpeed = (maxSpeedConstant * -1)
			
			xSpeed *= friction;
			scrollX -= xSpeed;
			this.x = scrollX;
			
			if(Math.abs(xSpeed) < 0.5)
				xSpeed = 0;	
			
			// rajat joissa tausta liikkuu
			if(scrollX > 50)
				scrollX = 50;
			else if (scrollX < -1850)
				scrollX = -1850;				
		}
		
		function keyDownHandler(e:KeyboardEvent):void 	// Tarkistaa painetaanko näppäintä parhaillaan
		{
			if(e.keyCode == Keyboard.LEFT || e.keyCode == Keyboard.A)
				leftPressed = true;
			if(e.keyCode == Keyboard.RIGHT || e.keyCode == Keyboard.D)
				rightPressed = true;
		}
		
		function keyUpHandler(e:KeyboardEvent):void 	// Tarkistaa että näppäintä ei parhaillaan paineta		
		{
			if(e.keyCode == Keyboard.LEFT || e.keyCode == Keyboard.A)
				leftPressed = false;
			if(e.keyCode == Keyboard.RIGHT || e.keyCode == Keyboard.D)
				rightPressed = false;
		}
		
		public function kaupanOviPainettu(event:MouseEvent)
		{
			mainClass.siirryKauppaan();
		}
		
	}
}
