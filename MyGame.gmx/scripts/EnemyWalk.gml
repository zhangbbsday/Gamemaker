{   
//blueman移动AI
    if (m_isAtking)  //禁止移动攻击
    {
        return 0;
    }
    
    if (m_isWalking)
    {
        sprite_index = spr_enemy_blueman_walk;
    }
    else
    {
        sprite_index = spr_enemy_blueman_idle;
    }
    
    var player = instance_find(obj_player, 0);
    var playerX = player.x;
    var deltaX = phy_position_x - playerX;
    var deltaX_abs = abs(deltaX);
    
    if (deltaX_abs < 200) //范围内追踪player
    {    
        if (deltaX < 0)
        {
            m_PlayerDirection = PlayerDirection.RIGHT;
            phy_position_x += hspeed;
        }
        else
        {
            m_PlayerDirection = PlayerDirection.LEFT;
            phy_position_x -= hspeed;
        }
           
        switch(m_PlayerDirection)
        {
        case PlayerDirection.LEFT:
        {
            image_xscale = -1;
            break;
        }
        case PlayerDirection.RIGHT:
        {
            image_xscale = 1;
        }
        }
        m_isWalking = true;
    }
    else
    {
        m_isWalking = false;
    }
}
