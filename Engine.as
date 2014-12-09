package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		public var player:Player = new Player(stage);
		
		public var aloitus:AloitusNakyma;
		public var peli:PeliNakyma;
		public var piha:Piha;
		public var kauppa:Kauppa;
		
		public function Engine()
		{
			// ensimmäisenä näytetään menu (se "haetaan" tällä funktiolla)
			naytaAloitusNakyma();
		}
		
		// Jokaiselle "kentälle" tehdään oma funktio, jolla tuodaan näytölle kyseinen kenttä ja poistetaan edellinen
		// Niissä tuodaan myös pelaajan ukkeli kentälle oikeaan kohtaan
		
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
			addChild(player);
			player.x = stage.stageWidth / 2;
			player.y = stage.stageHeight / 2;
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
			//this.setChildIndex(player, this.numChildren - 1); // Tällä saadaan pelaaja päällimmäiseksi, muuten se jää myDoor2 ja myTomaatti alapuolelle
			addChild(player);
			player.x = stage.stageWidth / 2;
			player.y = stage.stageHeight / 2;
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
			addChild(player);
			player.x = stage.stageWidth / 2;
			player.y = stage.stageHeight / 2;
		}
		
	}
}