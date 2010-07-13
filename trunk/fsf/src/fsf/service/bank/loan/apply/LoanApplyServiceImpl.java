package fsf.service.bank.loan.apply;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.bank.loan.apply.LoanApply;
import fsf.dao.bank.loan.apply.LoanApplyDao;
import chance.base.service.BaseService;
@Service
public class LoanApplyServiceImpl extends BaseService<LoanApply> implements LoanApplyService {
	@Resource
	public void setLoanApplyDao(LoanApplyDao loanApplyDao){
		dao = loanApplyDao;
	}
	
	public LoanApplyDao getLoanApplyDao(){
		return (LoanApplyDao)dao;
	}
}
