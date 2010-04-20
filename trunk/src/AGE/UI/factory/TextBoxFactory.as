package AGE.UI.factory
{
	import AGE.UI.control.TextBox;
	
	/**
	 * TextBox工厂
	 * @author 银鸑鷟(SliverPhoenix)
	 */
	public class TextBoxFactory
	{
		
		/**
		 * 产生TextBox的实例
		 * @see AGE.UI.control.TextBox
		 * @param template 模板
		 * @return TextBox
		 */
		public static function manufacture(template:Object):TextBox{
			var product:TextBox=new TextBox();
			product.x=new Number(template.x);
			product.y=new Number(template.y);
			product.width=new Number(template.width);
			product.height=new Number(template.height);
			product.bgpic.source=template.src;
			product.bgpic.alpha=new Number(template.alpha);
			product.textX=new Number(template.textX);
			product.textY=new Number(template.textY);
			return product;
		}
	}
}