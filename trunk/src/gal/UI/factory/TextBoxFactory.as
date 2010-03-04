package gal.UI.factory
{
	import gal.UI.control.TextBox;


	public class TextBoxFactory
	{
		
		public static function manufacture(x:Number,y:Number,width:Number,height:Number,src:String,alpha:Number=1):TextBox{
			var product:TextBox=new TextBox();
			product.x=x;
			product.y=y;
			product.width=width;
			product.height=height;
			product.bgpic.source=src;
			product.bgpic.alpha=alpha;
			return product;
		}
	}
}