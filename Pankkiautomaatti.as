package
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Pankkiautomaatti extends MovieClip
	{
		var mainClass:Engine;

		
		public function Pankkiautomaatti(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			this.gotoAndPlay("scene1");
			
			//klikkaa.addEventListener(MouseEvent.CLICK, klikattu); 
			
			napukka.addEventListener(MouseEvent.CLICK, klikattu);

		}
		
		

		public function klikattu(event:MouseEvent)
		{
			switch(currentLabel)
			{
				case "scene1":
				{
					this.gotoAndPlay("scene2");
					break;
				}
				case "scene2":
				{
					this.gotoAndPlay("scene3");
					break;
				}	
				case "scene3":
				{
					this.gotoAndPlay("scene4");
					break;
				}	
				case "scene4":
				{
					this.gotoAndPlay("scene5");
					break;
				}	
				case "scene5":
				{
					this.gotoAndPlay("scene6");
					break;
				}	
				default:
				{
					this.gotoAndPlay("scene1");
					break;
				}
			}
			
			
		}

	}
}