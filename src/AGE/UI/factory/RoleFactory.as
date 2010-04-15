package AGE.UI.factory
{
	import AGE.UI.control.Role;
	public class RoleFactory
	{
		public function RoleFactory()
		{
		}
		
		public static function manufacture(template:Object):Role{
			var product:Role=new Role();
			product.x=new Number(template.x);
			product.y=new Number(template.y);
			product.width=new Number(template.width);
			product.height=new Number(template.height);
			product.position=template.positionName;
			return product;
		}
	}
}