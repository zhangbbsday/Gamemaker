{
//blueman攻击AI
    var player = instance_find(obj_player, 0);
    var playerX = player.x;
    var deltaX_abs = abs(phy_position_x - playerX);
    
    if (deltaX_abs < m_AtkDistance)
    {
        if (m_isWalking)
        {
            m_isWalking = false;
        }
        
        m_isAtking = true;
        sprite_index = spr_enemy_blueman_atk;
        
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
    else
    {
        m_isAtking = false;
    }
    
    if (sprite_index == spr_enemy_blueman_atk)
    {
        if (m_CanAtk)
        {
            m_AtkBox = instance_create(phy_position_x, phy_position_y, obj_enemy_buleman_atkbox);
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
            
            m_AtkBox.phy_position_x += deltaX;
            m_AtkBox.phy_position_y += deltaY;
            m_CanAtk = false;
            
            alarm[0] = 1;
            alarm[1] = 100;
        }
    }
}
