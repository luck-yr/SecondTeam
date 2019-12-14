package com.hqyj.dlyzy.CRMsystem.shiro;

import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;


public class ShiroRealm extends AuthorizingRealm{
	
	
	// 登陆认证功能
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken arg0) throws AuthenticationException {
		
		UsernamePasswordToken token = (UsernamePasswordToken) arg0;
		String username = token.getUsername();
//		SysUser sysUser = sysUserMapper.selectUserByAccount(username);
		
		/**
		 * para1:"主键"：是一个对象，可以是一个user,也可以是用户名
		 * para2：密码：注意，这个密码是从数据库中查出来的
		 * para3：当前的realm的名字
		 */
//		AuthenticationInfo info = new SimpleAuthenticationInfo(username, sysUser.getPassword(), getName());
//		return info;
		return null;
	}
	
	// 授权认证
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// 从principals里面拿到存的时候的数据，这里我们存的是用户名，是一个String
		String account =  (String) principals.getPrimaryPrincipal();
		// 根据名字查到用户
//		SysUser user = sysUserMapper.selectUserByAccount(account);
		// 根据用户的id获得他的角色
//		Set<String> roles = (Set<String>) sysUserMapper.selectRolesById(user.getId());
//		return new SimpleAuthorizationInfo(roles);
		
		/*// 根据用户的id获得他的权限
		Set<String> perms = sysUserMapper.selectPermsById(user.getId());
		
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.setStringPermissions(perms);
		
		System.out.println("perms:" + perms);
		
		return info;*/
		return null;
	}

}
