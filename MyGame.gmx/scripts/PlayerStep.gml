{  
//死亡
    PlayerDead(); 
//死亡停止操作
    if (m_isDead)
    {
        if (m_DeadAnimation)
        {
            image_index = 2;
        }      
        return 0;
    }
    
    if (m_OnDamage)
    {
        if (!m_Stop)
        {   
            alarm[2] = 20;
        }
        
        m_Stop = true;
    }
    
//移动和待机
    PlayerWalk();
//跳跃
    PlayerJump();
//攻击
    PlayerAtk();
}
