with (other){
	hp = hp - 1;
}

instance_create_layer(x,y,"EnemyEffectLayer",obj_enemy_fragment);
instance_destroy();