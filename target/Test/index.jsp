<!DOCTYPE html>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<html>
<head>
    <title>Bootstrap ʵ��</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-theme.css">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/npm.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                ע���¼ҳ��
            </h3>
        </div>
    </div>
    <div class="row clearfix" position:relative>
        <div class="col-md-6 column">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <p align="center" style="font-size:20px;">ע��</p>
                    <label for="uname" class="col-sm-2 control-label">�˺�</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="uname" name="uname"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="pword" class="col-sm-2 control-label">����</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="pword" name="pword"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox" />Remember me</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" formaction="${pageContext.request.contextPath }/Admin/login">ע��</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-6 column">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <p align="center" style="font-size:20px;">��¼</p>
                    <label for="uname" class="col-sm-2 control-label">�˺�</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="uname" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="pword" class="col-sm-2 control-label">����</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="pword" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox" />Remember me</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">��¼</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <br/>
    <hr/>
    <div class="row clearfix" position:relative>
        <div class="col-md-4 column">
            <p>
                ע���¼���ܣ�����д���棬ע��ɹ���ʱҲû��ʾ��ֱ��ȥ�ұߵ�¼���ԡ���¼��ȥ��ע��ɹ�����¼����ȥ���㵹ù��
            </p>
        </div>
        <div class="col-md-4 column">
            <address> <strong>Twitter, Inc.</strong>795 Folsom Ave, Suite 600 San Francisco, CA 94107 <abbr title="Phone">P:</abbr> (123) 456-7890</address>
        </div>
        <div class="col-md-4 column">
            <address> <strong>Twitter, Inc.</strong>795 Folsom Ave, Suite 600 San Francisco, CA 94107 <abbr title="Phone">P:</abbr> (123) 456-7890</address>
        </div>
    </div>
</div>
</body>
</html>