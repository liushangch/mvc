package com.leo.core.shiro;

import org.apache.shiro.authc.UsernamePasswordToken;

public class LoginToken extends UsernamePasswordToken {

    public LoginToken(String username, String password) {
        super(username, password);
    }
}
