package
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Juttu extends MovieClip
	{
		var mainClass:Engine;
		var scoreHud:ScoreHud;
		
		public function Juttu(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			// Nyt kannattaa kurkata Flashistä movieclippiä "juttu" :D
			// "klikkaa" on se instance name mikä annettiin framella 12 ilmestyvälle tekstille "KLIKKAA"
			// tässä sille annetaan MouseEvent.CLICK, joten jotain voi tapahtua kun sitä klikataan :)
			klikkaa.addEventListener(MouseEvent.CLICK, klikattu); 
			
			// "drag" on se instance name mikä annettiin Flashissä sille pallukalle jota tässä raahataan
			// vaikka Builderi huutelee tässä jotain, niin ei siitä tarvi välittää, koska se ymmärtää mitä tarkotetaan sitte kun peli käynnistyy 
			drag.addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
			drag.addEventListener(MouseEvent.MOUSE_UP, mouseUp);
			
			// tämä tarkottaa sitä, että drag movieclippiä voidaan käyttää napin tavoin
			drag.buttonMode = true;
		}
		
		
		// Kun objektia klikataan, sitä voidaan alkaa raahamaan
		public function mouseDown(event:MouseEvent)
		{
			// tämä tarkottaa sitä, että object on se jonka pitää alkaa liikkua klikattaessa
			// joo moi en osaa nyt selittää :D
			var object = event.target;
			// aloittaa objektin raahaamisen
			object.startDrag();
		}
		
		
		// Kun päästetään hiiren napista irti niin "raahaus" loppuu
		public function mouseUp(event:MouseEvent)
		{
			var object = event.target;
			
			
			// Jos drag "tiputetaan" x-akselilla välille 220-260 (eli se kohta jossa se toinen pallukka on)...
			if(drag.x > 220 && drag.x < 260)
			{
				//...niin se jämähtää siihen kohtaan mikä tässä määritellään (eli juuri nyt se on sen toisen pallukan kohdalla)
				drag.x = 240;
				drag.y = 170;
				// käsketään funktion endLevel tehdä se mitä se tekee :D
				endLevel();
				// Tämän jälkeen "Juttu" pitää poistaa näyttämöltä ja ukkeli laittaa sinne minne kuuluu
			}
			else
			{
				// jos drag tiputetaan jonnekin muualle kuin mitä tossa yläpuolella määriteltiin, niin se palaa takaisin lähtöpaikaansa
				drag.x = 40;
				drag.y = 30;
			}
			
			// lopettaa objektin raahaamisen
			object.stopDrag();
		}
		

		public function endLevel()
		{
			// käsketään Enginen päivittää pistemäärä
			mainClass.updateTheScore();
			// Menee tämän clipin frameen jolle on annettu nimi "loppu"
			// tämä pitäisi kai toimia this.gotoAndStop(frame, scene)
			this.gotoAndStop("loppu");
		}
		
		// Tämä on se MouseEvent mikä annettiin KLIKKAA tekstille joka ilmestyy kun päästään frameen "loppu"
		public function klikattu(event:MouseEvent)
		{
			// Käsketään Enginen suorittaa funktio naytaPeliNakyma
			// eli tässä tapauksessa mennään takaisin olohuoneeseen josta tähän juttuun alunperin päästiin
			mainClass.naytaPeliNakyma();
		}
	}
}