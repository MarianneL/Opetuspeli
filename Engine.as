package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		public var aloitus:AloitusNakyma;
		public var peli:PeliNakyma;
		public var piha:Piha;
		public var kauppa:Kauppa;
		
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
			peli = new PeliNakyma(stage, this);
			if(aloitus){
				removeChild(aloitus);
				aloitus = null;
			}
			addChild(peli)
		}
		
		public function siirryUlos()
		{
			piha = new Piha(stage, this);
			if(peli)
			{
				removeChild(peli);
				//peli = null;
			}
			addChild(piha);
		}
		
		public function siirryKauppaan()
		{
			kauppa = new Kauppa(stage);
			if(piha)
			{
				removeChild(piha);
				//piha = null;
			}
			addChild(kauppa);
		}
		
	}
}