package
{
	import Olohuone;
	import Engine;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	public class AloitusNakyma extends MovieClip
	{
		public var mainClass:Engine;
		
		public function AloitusNakyma(passedClass:Engine)
		{
			mainClass = passedClass
			aloitapelipainike.addEventListener(MouseEvent.CLICK, AloitapelipainikePainettu)
		}
		
		public function AloitapelipainikePainettu(event:MouseEvent)
		{
			mainClass.naytaPeliNakyma();
		}
	}
}