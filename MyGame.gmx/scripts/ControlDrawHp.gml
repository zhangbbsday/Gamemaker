{
//绘制生命条（只显示一个）
    if (!(instance_exists(m_Role)))
    {
        return 0;
    }
    
    var roleX = m_Role.phy_position_x;
    var roleY = m_Role.phy_position_y;
    if (m_Role.m_OnDamage)
    {   
        draw_healthbar(roleX - 15, roleY - 20, roleX + 15, roleY - 25, m_Role.m_Hp / m_Role.m_HpMax * 100, c_black,c_red,c_green,1,1,1);
    }
}
