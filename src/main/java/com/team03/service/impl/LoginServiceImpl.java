package com.team03.service.impl;

import com.team03.domain.YjStaff;
import com.team03.mapper.LoginDao;
import com.team03.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * AlsdGo 2018年02月05日 10:41
 */
@Service(value = "loginService")
public class LoginServiceImpl implements LoginService {

    @Resource
    private LoginDao loginDao;

    @Override
    public YjStaff login(YjStaff yjStaff) {

        List<YjStaff> yjStaffList = loginDao.login(yjStaff);

        if (yjStaffList != null && yjStaffList.size() > 0) {
            return yjStaffList.get(0);
        }

        return null;
    }
}
