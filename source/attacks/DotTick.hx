package attacks;

import ecs.Entity;
import attacks.base.BaseAttack;

abstract DoTTick(BaseAttack) to BaseAttack {
	
	public function new(caster:Entity, dmg:Int, ticks:Int, tickDur:Float) {
		this = new BaseAttack(caster, null, DMG(dmg)); // deal damage onTick
		this.updater.duration = tickDur;
		this.updater.repetitions = ticks;
		this.saveReps();
	}
}