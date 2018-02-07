package com.team03.domain;

import java.util.Date;

/**
 * Created by hxd on 18/2/7.
 */
/*模块二 科研项目合同推荐-科研项目合同推荐申报*/
public class Declare {
    private String contractName; //合同名称
    private String contractNumber; //合同编号
    private String contractOtherInformation; //合同对方信息
    private Date contractBegin; //合同起日期
    private Date contractEnd; //合同止日期
    private double totalCost; //总费用
    private double appropriationsForOther; //对方付
    private double selfFinancingCompany; //公司自筹
    private String intellectualAndDistributionMode;//形成的知识产权及分配方式
    private String directEconomicBenefitAndDistributionMode; //直接经济效益及分配方式
}
