{
//动画播放结束
    if (m_isAtking)
    {
        m_isAtking = false;
    }
    
    if (m_isDead)
    {
        instance_destroy();
    }
}
