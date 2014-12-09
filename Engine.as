package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		public var aloitus:AloitusNakyma;
		public var peli:PeliNakyma;
		
		public function Engine()
		{
			naytaAloitusNakyma();
		}
		
		public function naytaAloitusNakyma()
		{
			aloitus = new AloitusNakyma(this);
			if(peli){
				removeChild(peli);
				peli = null;
			}
			addChild(aloitus);
		}
		
		public function naytaPeliNakyma()
		{
			peli = new PeliNakyma(stage);
			if(aloitus){
				removeChild(aloitus);
				aloitus = null;
			}
			addChild(peli)
		}
	}
}