{
//人物攻击
    if (m_isLanding && m_CanAtk && keyboard_check(ord('J')))
    {
        m_isAtking = true;
        sprite_index = spr_player_atk;
        
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
    
    if (sprite_index == spr_player_atk && m_CanAtk)
    {
        if (image_index == 2 || image_index == 5)
        {
            m_AtkBox = instance_create(phy_position_x, phy_position_y, obj_player_atkbox);
            m_AtkBox.m_Parent = id;
            var deltaX = 0;
            var deltaY = 5;
            
            switch(m_PlayerDirection)
            {
            case PlayerDirection.LEFT:
            {
                deltaX = -15;
                break;
            }
            case PlayerDirection.RIGHT:
            {
                deltaX = 15;
            }
            }
             
            m_CanAtk = false;   
            m_AtkBox.phy_position_x += deltaX;
            m_AtkBox.phy_position_y += deltaY;
                
            alarm[0] = 1;
            alarm[1] = 10;
        }
    }
}
