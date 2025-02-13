extends DirProjectileDefault

func fizzle():
	host.spawn_particle_effect_relative(preload("res://_Magolor/characters/magolor/particles/HitEffectSphere.tscn"), Vector2(0, 0))
	.fizzle()
	
