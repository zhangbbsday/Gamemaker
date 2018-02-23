{
//死亡停止操作
    if (m_isDead)
    {
        return 0;
    }
//死亡
    EnemyDead();   
     
    if (m_isHard && m_OnDamage)
    {
        if (!m_Stop)
        {   
            alarm[2] = 10;
            image_speed = 0;
        }
        
        m_Stop = true;
        return 0;
    }
    
//移动和待机
    EnemyWalk();
//攻击
    if (m_CanAtk)
    {
        EnemyAtk();
    }
}   
