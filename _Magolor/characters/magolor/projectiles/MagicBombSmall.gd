extends BaseProjectile



func hit_by(hitbox):
	.hit_by(hitbox)
	if is_instance_valid(obj_from_name(hitbox.host)):
		self.change_state("Flying")
		self.reset_momentum()
		apply_force(fixed.mul(fixed.mul(hitbox.dir_x, str(obj_from_name(hitbox.host).get_facing_int())), "14"), fixed.mul(fixed.abs(fixed.add(fixed.mul(hitbox.dir_y, "5"), "4")), "-1"))
