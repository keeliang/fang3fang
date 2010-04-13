package chance.base;

import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
/**
 * 
 * @author yws
 *
 */
public class BaseParameter implements Serializable {

	private static final long serialVersionUID = -2050801753454734869L;
	
	public static final String SORTED_ASC = "ASC";
	public static final String SORTED_DESC = "DESC";
	/**
	 * count per page
	 */
	private Integer maxResults = 10;
	/**
	 * current page
	 */
	private Integer currentPage = 1;
	/**
	 * dynamic query conditions for example:
	 * queryConditions.put("_ne_id",value); when static and dynamic exists at
	 * the same time,static priority
	 */
	private Map<String, Object> queryDynamicConditions = new HashMap<String, Object>(4);
	
	/**
	 * sorted confiditions 
	 * example : sortedConditions.put("id","ASC") means "order by id asc"
	 * @return
	 */
	private Map<String, String> sortedConditions = new LinkedHashMap<String, String>(2);
	
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

	public Map<String, Object> getQueryDynamicConditions() {
		return queryDynamicConditions;
	}

	public void setQueryDynamicConditions(
			Map<String, Object> queryDynamicConditions) {
		this.queryDynamicConditions = queryDynamicConditions;
	}

	public Map<String, String> getSortedConditions() {
		return sortedConditions;
	}

	public void setSortedConditions(Map<String, String> sortedConditions) {
		this.sortedConditions = sortedConditions;
	}
}