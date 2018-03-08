package com.team03.shiro;

import com.team03.domain.User;
import com.team03.service.sxhSercice.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;
import java.util.Set;

/**
 * AlsdGo 2018年02月07日 16:21
 */
public class CustomRealm extends AuthorizingRealm {

    /*提供数据库用户 角色 权限查询的业务对象*/
    @Resource
    private UserService userService;

    /**
     * 授权 即给当前用户添加某些角色或者权限
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        /*1.获取认证通过的当前用户对象的用户名*/
        String username = (String) principalCollection.getPrimaryPrincipal();

        /*2.根据用户名查询角色列表*/
        Set<String> roles = userService.getRoles(username);

        /*3.根据用户名查询角色列表*/
        Set<String> permissions = userService.getPermissions(username);

        /*4.构建授权信息对象*/
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

        /*5.给授权角色*/
        info.setRoles(roles);
        info.setStringPermissions(permissions);

        return info;
    }

    /**
     * 认证 即对某个用户名进行身份认证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username = (String) token.getPrincipal();
//        String password = (String) token.getCredentials();

        /*2.根据用户名查找用户*/
        User user = userService.selectByUserName(username);

        /*如果能查到 则返回一个认证器对象 否则返回null*/
        if (user != null) {
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user.getUserName(),user.getPassword(),getName());
            return info;
        }
        return null;
    }
}
