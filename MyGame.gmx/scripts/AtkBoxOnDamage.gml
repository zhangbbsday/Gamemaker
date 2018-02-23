{
//攻击碰撞盒子效果
    audio_play_sound(battle,false,false);  //播放音乐一次
    other.m_Hp -= m_Parent.m_Dps;
    other.m_isHard = true;
    other.m_OnDamage = true;
    var control = instance_find(obj_control, 0);
    control.m_Role = other.id;
    
    instance_destroy();
}
