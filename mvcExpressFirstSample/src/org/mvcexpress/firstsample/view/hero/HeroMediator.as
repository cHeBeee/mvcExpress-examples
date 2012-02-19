package org.mvcexpress.firstsample.view.hero{
import org.mvcexpress.firstsample.notes.DataNote;
import org.mvcexpress.mvc.Mediator;

/**
 * TODO:CLASS COMMENT
 * @author 
 */
public class HeroMediator extends Mediator {
	
	[Inject]
	public var view:Hero;
	
	//[Inject]
	//public var myProxy:MyProxy;
	
	override public function onRegister():void {
		addHandler(DataNote.HERO_POS_UPDATE, handleHeroPosUpdate);
	}
	
	private function handleHeroPosUpdate(newHeroPos:int):void {
		view.x = newHeroPos;
	}
	
	override public function onRemove():void {
		
	}
	
}
}