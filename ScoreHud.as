package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.text.TextField;
	import flash.events.Event;
	
	public class ScoreHud extends MovieClip
	{
		private var stageRef:Stage;
		public var s_score:Number = 0;
		
		public function ScoreHud(stageRef:Stage)
		{
			// tämä on alunalkaen pois näkyvistä, jotta se ei näy alkunäytöllä
			this.alpha = 0;
			
			this.stageRef = stageRef;
			
			// Pistemäärä on aluksi 0
			score.text = "0";
			
			// Tässä määritellään missä kohtaa näyttöä pisteet näkyy
			x = 10;
			y = stageRef.stageHeight - height - 10;
		}
		
		
		/* Tämä funktio päivittää pistemäärän.
		Suluissa oleva value:Number meinaa sitä, että kun tätä funktiota käytetään muualla, sulkuihin laitetaan se numero kuinka paljon pisteitä halutaan antaa
		esim. updateScore(10)
		*/
		public function updateScore(value:Number):void
		{
			s_score += value;
			score.text = String(s_score);
		}
	}
}