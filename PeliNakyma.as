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
	import Engine;
	
	public class PeliNakyma extends MovieClip
	{
		var leftPressed:Boolean = false;
		var rightPressed:Boolean = false;
		
		var xSpeed:int = 10;
		var scrollX:int = 0;
		var speedConstant:int = 20; 
		var friction:Number = 0.75;
		var maxSpeedConstant:Number = 20;
		
		var mainClass:Engine;
		
		public function PeliNakyma(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			//create an object of our ship from the Ship class
			var player:Player = new Player(stage);
			//add it to the display list
			stage.addChild(player);
			player.x = stage.stageWidth / 2;
			player.y = stage.stageHeight / 2;
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler); // Tarkistaa painetaanko näppäintä parhaillaan
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUpHandler); // Tarkistaa että näppäintä ei parhaillaan paineta
			stage.addEventListener(Event.ENTER_FRAME, loop);
			
			ulkoOvi.addEventListener(MouseEvent.CLICK, ulkoOviPainettu)
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
			if(scrollX > 0)
				scrollX = 0;
			else if (scrollX < -730)
				scrollX = -730;		
		}
		
		function keyDownHandler(e:KeyboardEvent):void 	// Tarkistaa painetaanko näppäintä parhaillaan
		{
			if(e.keyCode == Keyboard.LEFT)
				leftPressed = true;
			if(e.keyCode == Keyboard.RIGHT)
				rightPressed = true;
		}
		
		function keyUpHandler(e:KeyboardEvent):void 	// Tarkistaa että näppäintä ei parhaillaan paineta		
		{
			if(e.keyCode == Keyboard.LEFT)
				leftPressed = false;
			if(e.keyCode == Keyboard.RIGHT)
				rightPressed = false;
		}
		
		
		public function ulkoOviPainettu(event:MouseEvent)
		{
			mainClass.siirryUlos();
		}
	}
}
