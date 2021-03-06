package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.geom.Point;
	import flash.ui.Keyboard;
	import KeyObject;
	
	public class Player extends MovieClip
	{			
		var leftPressed:Boolean = false;
		var rightPressed:Boolean = false;
		
		var speed:Number = 5;
		
		var stageRef:Stage;
		var key:KeyObject;
		
		// määrittää sen mikä animaatio ukkelilla pyörii
		var animationState:String = "idle";
		
		public function Player(stageRef:Stage)
		{
			this.stageRef = stageRef;
			key = new KeyObject(stageRef);
			
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
		
		public function loop(e:Event):void
		{
			checkKeypresses();
			
			// Jos oikea näppäin pohjassa
			if(rightPressed)
			{
				// animaatioksi vaihtuu oikealle kävelevä ukkeli
				animationState = "walkRight";
				x += speed;
			}
				// Jos vasen näppäin on pohjassa...
			else if(leftPressed)
			{
				// animaatioksi vaihtuu vasemmalle kävelevä ukkeli
				animationState = "walkLeft";
				x -= speed;
			}
				// Jos kumpikaan näppäin ei ole pohjassa... (! = not, eli "not rightPressed")
			else if(!rightPressed && !leftPressed)
				//...animaationa on idle
				animationState = "idle";
			
			// currentLabel katsoo flashissä ukkelin timelinelta, missä labelissa ollaan (labelit: idle, walking.)
			// Jos label ja animaatio jonka pitäisi pyöriä ei täsmää, animaatio vaihdetaan oikeaksi
			// TAi jotain sellasta, en oikeen ymmäräny :D
			if(this.currentLabel != animationState)
				this.gotoAndStop(animationState);
		}		
		
		
		// Tallentaa tiedon siitä onko näppäin pohjassa vai ei
		public function checkKeypresses():void
		{
			if(key.isDown(37) || key.isDown(65)){ 
				leftPressed = true;
			} else {
				leftPressed = false;
			}
			
			if(key.isDown(39) || key.isDown(68)){ 
				rightPressed = true;
			} else {
				rightPressed = false;
			}
		}

		
		
	}
}