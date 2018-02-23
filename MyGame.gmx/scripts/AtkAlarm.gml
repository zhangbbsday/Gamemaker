{
//攻击清除
    if (instance_exists(m_AtkBox))
    {    
        with (m_AtkBox)
        {
            instance_destroy();
        }
    }

    m_AtkBox = noone;
}
