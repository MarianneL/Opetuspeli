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

		var automaatti1:Automaatti1;
		var automaatti2:Automaatti2;
		var automaatti3:Automaatti3;
		var automaatti4:Automaatti4;
		var automaatti5:Automaatti5;
		var automaatti6:Automaatti6;
		
		public function Pankkiautomaatti(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			//this.width = 563.8;
			//this.height = 691.95;
			this.x = 0;
			this.y = 0;

			
			napukka1.addEventListener(MouseEvent.CLICK, klikattu);
		}
		
		public function klikattu(event:MouseEvent)
		{
			automaatti2 = new Automaatti2();
			addChild(automaatti2);
		}
		
		
		
		// Hän ei suostunut toimiin :(((
		/*public function klikattu(event:MouseEvent)
		{
			switch(automaattiClip)
			{
				case "automaatti1":
				{
					trace("automaatti2");		
					automaatti2 = new Automaatti2();
					addChild(automaatti2)
					automaattiClip = "automaatti2";
					break;
				}
				case "automaatti2":
				{
					trace("automaatti3");		
					automaatti3 = new Automaatti3();
					removeChild(automaatti2);
					addChild(automaatti3)
					automaattiClip = "automaatti3";
					break;
				}
				case "automaatti3":
				{
					trace("automaatti4");		
					automaatti4 = new Automaatti4();
					removeChild(automaatti3);
					addChild(automaatti4)
					automaattiClip = "automaatti4";
					break;
				}
				case "automaatti4":
				{
					trace("automaatti5");		
					automaatti5 = new Automaatti5();
					removeChild(automaatti4);
					addChild(automaatti5)
					automaattiClip = "automaatti5";
					break;
				}
				case "automaatti5":
				{
					trace("automaatti6");		
					automaatti6 = new Automaatti6();
					removeChild(automaatti5);
					addChild(automaatti6)
					automaattiClip = "automaatti6";
					break;
				}
				default:
				{
					break;
				}
			}
		}*/
		
		

	}
}