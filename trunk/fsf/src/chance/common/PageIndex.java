package chance.common;

public class PageIndex {
	private long startIndex;
	private long endIndex;
	
	public PageIndex(long startIndex, long endIndex) {
		this.startIndex = startIndex;
		this.endIndex = endIndex;
	}
	public long getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(long startIndex) {
		this.startIndex = startIndex;
	}
	public long getEndIndex() {
		return endIndex;
	}
	public void setEndIndex(long endIndex) {
		this.endIndex = endIndex;
	}
	
	public static PageIndex getPageIndex(long viewPageCount, int currenPage,
			long totalPage) {
		long startpage = currenPage
				- (viewPageCount % 2 == 0 ? viewPageCount / 2 - 1 : viewPageCount / 2);
		
		long endpage = currenPage + viewPageCount / 2;
		
		if (startpage < 1) {
			startpage = 1;
			if (totalPage >= viewPageCount)
				endpage = viewPageCount;
			else
				endpage = totalPage;
		}
		
		if (endpage > totalPage) {
			endpage = totalPage;
			if ((endpage - viewPageCount) > 0)
				startpage = endpage - viewPageCount + 1;
			else
				startpage = 1;
		}
		return new PageIndex(startpage, endpage);
	}
}
