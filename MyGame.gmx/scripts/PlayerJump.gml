{
//人物跳跃
        if (m_isJumping_Up && m_isLanding)
        {
            m_isJumping_Up = false;
            image_index = 2;
        }
    
        if (keyboard_check(ord('K')) && !m_isJumping_Up)
        {     
            m_isJumping_Up = true;
            m_isLanding = false;
            playerY = phy_position_y;
            
            switch(m_PlayerDirection)
            {
            case PlayerDirection.LEFT:
            {
                sprite_index = spr_player_jump;
                image_xscale = -1;
                break;
            }
            case PlayerDirection.RIGHT:
            {
                sprite_index = spr_player_jump;
                image_xscale = 1;
            }
            }
            image_index = 0;
        }
        
//跳跃实现
        if (m_isJumping_Up)
        {    
            if (!m_isJumping_Down)
            {
                var deltaY = abs(phy_position_y - playerY);    
                phy_position_y -= vspeed;
                image_index = 0;
                if (deltaY >= m_JumpDistance)
                {
                    m_isJumping_Down = true;
                }
            }
            else
            {
                image_index = 1;
            }
        }
        

}
