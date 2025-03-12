package com.learn.impl;

import com.learn.users.Users;

public interface UserInterface {
public Users insertuser(Users u);
public boolean insertusers(Users u);
public Users getUsers(String email,String password);
public boolean updateUsers(Users u);
}
