package chance.base;

import java.util.LinkedHashMap;
import java.util.Map;
/**
 * 
 * @author yws
 *
 */
public final class AdvancedQueryParameter {
	private String[] propName;
	private String[] opt;
	private Object[] propValue;
	private Integer maxResults;
	private Integer currentPage;
	private Map<String,String> sortedConditions = new LinkedHashMap<String, String>(4);

	public String[] getPropName() {
		return propName;
	}

	public void setPropName(String[] propName) {
		this.propName = propName;
	}

	public String[] getOpt() {
		return opt;
	}

	public void setOpt(String[] opt) {
		this.opt = opt;
	}

	public Object[] getPropValue() {
		return propValue;
	}

	public void setPropValue(Object[] propValue) {
		this.propValue = propValue;
	}

	public int getFirstResult() {
		return (getCurrentPage() == null ? 1 : getCurrentPage() - 1)* getMaxResults();
	}

	public Integer getMaxResults() {
		return maxResults;
	}

	public void setMaxResults(Integer maxResults) {
		this.maxResults = maxResults;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Map<String, String> getSortedConditions() {
		return sortedConditions;
	}

	public void setSortedConditions(Map<String, String> sortedConditions) {
		this.sortedConditions = sortedConditions;
	}

}
