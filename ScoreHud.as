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
			// tämä on alunalkaen pois näkyvistä jotta se ei näy alkunäytöllä
			this.alpha = 0;
			
			this.stageRef = stageRef;
			
			score.text = "0";
			
			x = 10;
			y = stageRef.stageHeight - height - 10;
		}
		
		public function updateScore(value:Number):void
		{
			s_score += value;
			score.text = String(s_score);
		}
	}
}