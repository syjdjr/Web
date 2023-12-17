package Filter;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {
	private FilterConfig filterConfig = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter02 �ʱ�ȭ...");
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)	throws IOException, ServletException {
		System.out.println("Filter02 ����...");

		//filter02.jsp ���� �Է¹��� ����.
		//�信 �Էµ� ������ ������� ���̵�� �н�����.
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		//param1, param2 : web.xml ���� ������ �Ķ���� ����.
		String param1 = filterConfig.getInitParameter("id22");
		String param2 = filterConfig.getInitParameter("passwd22");

		String message;

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();

		// �信�� �Էµ� �� id, passwd
		// web.xml���� �ҷ��� �Ķ���� ���� param1,param2 ���Ҵ�. 
		// ���ϴ� �˰���. 
		if (id.equals(param1) && passwd.equals(param2))
			message = "�α��� �����߽��ϴ�.";
		else
			message = "�α��� �����߽��ϴ�.";

		writer.println(message);

		filterChain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		System.out.println("Filter02 ����..");
	}
}