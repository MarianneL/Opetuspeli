package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		public var player:Player = new Player(stage);
		
		public var aloitus:AloitusNakyma;
		public var kauppa:Kauppa;
		public var keittio:Keittio;
		public var olohuone:Olohuone;
		public var piha:Piha;
		public var pihaJatkuu:PihaJatkuu;
		public var tyypinHuone:TyypinHuone;
		public var vessa:Vessa;
		
		public var juttu:Juttu;
		
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
			if(olohuone){
				removeChild(olohuone);
				olohuone = null;
			}
			addChild(aloitus);
		}
		
		public function naytaPeliNakyma(/*Toimiiko jos tässä esim playerX, playerY...*/)
		{
			/*...Ja täällä määritellään playerX ja -Y riippuen mistä tänne tullaan,
			esim eri arvot kun tullaan pihalta tai jostain huoneesta?*/
			
			olohuone = new Olohuone(stage, this);
			if(aloitus){
				removeChild(aloitus);
				aloitus = null;
			}
			addChild(olohuone)
			setPlayer();
		}
		
		public function siirryUlos()
		{
			piha = new Piha(stage, this);
			if(olohuone)
			{
				removeChild(olohuone);
				//peli = null;
			}
			addChild(piha);
			setPlayer();
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
			setPlayer();
		}
		
		public function siirryKeittioon()
		{
			keittio = new Keittio(stage);
			if(olohuone)
			{
				removeChild(olohuone);
				//piha = null;
			}
			addChild(keittio);
			setPlayer();
		}
		
		public function teeJuttu()
		{
			juttu = new Juttu(stage);
			if(olohuone)
			{
				removeChild(olohuone);
			}
			addChild(juttu);
		}
		
		
		public function setPlayer():void
		{
			addChild(player);
			player.x = stage.stageWidth / 2;
			player.y = stage.stageHeight / 2;
		}
		
	}
}