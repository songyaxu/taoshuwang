package com.xujie.interceptor;
import java.util.Map;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.xujie.entity.User;
@SuppressWarnings("serial")
public class AuthorityInterceptor extends AbstractInterceptor {
	@SuppressWarnings("rawtypes")
	@Override
	// ��¼������
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();
		Map session = context.getSession();
		User user = (User) session.get("user");
		if (user != null) {
			return invocation.invoke();
		}
		context.put("message", "����û�е�¼�����¼ϵͳ��");
		return Action.LOGIN;
	}
}