package com.napit;
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class WcOvi extends SimpleButton
	{
		public function WcOvi(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}