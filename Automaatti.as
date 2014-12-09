package
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class Automaatti extends SimpleButton
	{
		public function Automaatti(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}