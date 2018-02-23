{
//人物行走
    if (m_isLanding && !m_isAtking)
    {
        if (m_isWalking)
        {
            sprite_index = spr_player_walk;
        }
        else
        {
            sprite_index = spr_player_idle;
        }
    }
  
    if (keyboard_check(ord('A')))
    {
        m_isWalking = true;
        m_PlayerDirection = PlayerDirection.LEFT;
        image_xscale = -1;
        phy_position_x -= hspeed;
    }
    else if (keyboard_check(ord('D')))
    {
        m_isWalking = true;
        m_PlayerDirection = PlayerDirection.RIGHT;
        image_xscale = 1;
        phy_position_x += hspeed;
    }
    else
    {
        m_isWalking = false;
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
    }
}
