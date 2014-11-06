public class FormHandler : HTTPRequestHandler
{
	String user;
	String pwd;
	public void get(HTTPRequest req) {
		user = req.get_query_paramaeter("user");
		pwd = req.get_query_parameter("pwd");
		req.send_response(HTTPResponse.for_text_string(user));
	}

	public void post(HTTPRequest req) {
		user = req.get_query_paramaeter("user");
		pwd = req.get_query_parameter("pwd");
		req.send_response(HTTPResponse.for_text_string(pwd));
	}
}
