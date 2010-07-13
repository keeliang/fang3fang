package fsf.dao.bank.loan.apply;

import org.springframework.stereotype.Repository;

import fsf.beans.bank.loan.apply.LoanApply;
import chance.base.dao.BaseDao;

@Repository
public class LoanApplyDaoImpl extends BaseDao<LoanApply> implements LoanApplyDao{
	public LoanApplyDaoImpl() {
		super(LoanApply.class);
	}
}
