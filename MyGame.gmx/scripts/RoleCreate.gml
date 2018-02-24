//初始化
image_speed = 0.25;
phy_fixed_rotation = 1;

enum PlayerDirection  //人物朝向
{
    LEFT,
    RIGHT
}

m_PlayerDirection = PlayerDirection.RIGHT;

m_isWalking = false;
m_isAtking = false;
m_isDead = false;
m_isHard = false;  //硬直
m_Stop = false;   //硬直相关参数
m_OnDamage = false; // 是否受到伤害
m_DeadAnimation = false;
