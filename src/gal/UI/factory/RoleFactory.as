package gal.UI.factory
{
	import gal.UI.control.Role;
	public class RoleFactory
	{
		public function RoleFactory()
		{
		}
		
		public static function manufacture(x:Number,y:Number,width:Number,height:Number,position:String){
			var product:Role=new Role();
			product.x=x;
			product.y=y;
			product.width=width;
			product.height=height;
			product.position=position;
			return product;
		}
	}
}