package tk.mybatis.simple.mapper;

import tk.mybatis.simple.model.SysUser;

public interface SysUserMapper {
    SysUser selectById(Long id);
}
