package
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class Klikkaa extends SimpleButton
	{
		public function Klikkaa(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}