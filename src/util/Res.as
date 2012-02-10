package util {
	import flash.system.Capabilities;
	import mx.resources.ResourceManager;
	import mx.core.UIComponent;
	//import br.com.rectius.library.notificator.NotificatorManager;
	//import br.com.rectius.library.notificator.NotificatorMode;

	public class Res {

		/* UI constants */
		private static var delay:int = 5000;

		/**
		 * Gets corresponding resource string by id.
		 */
		public static function get(id:String):String { return ResourceManager.getInstance().getString('resources', id); }

		/**
		 * Show/hide UI element ~ should attempt to toggle it's visibility and layout status.
		 */
		public static function toggle(component:UIComponent):void {
			//if(component.hasOwnProperty('visible') && 
			   //component.hasOwnProperty('includeInLayout')) {
			if(component.hasOwnProperty('visible')) {
				if(component.visible) {
					component.visible = false;
					//component.includeInLayout = false;
				} else {
					component.visible = true;
					//component.includeInLayout = true;
				}
			}
		}
	}
}
