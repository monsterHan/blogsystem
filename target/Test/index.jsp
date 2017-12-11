<!DOCTYPE html>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<html>
<head>
    <title>Bootstrap ÊµÀý</title>
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
                ×¢²áµÇÂ¼Ò³Ãæ
            </h3>
        </div>
    </div>
    <div class="row clearfix" position:relative>
        <div class="col-md-6 column">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <p align="center" style="font-size:20px;">×¢²á</p>
                    <label for="uname" class="col-sm-2 control-label">ÕËºÅ</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="uname" name="uname"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="pword" class="col-sm-2 control-label">ÃÜÂë</label>
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
                        <button type="submit" class="btn btn-default" formaction="${pageContext.request.contextPath }/Admin/login">×¢²á</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-6 column">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <p align="center" style="font-size:20px;">µÇÂ¼</p>
                    <label for="uname" class="col-sm-2 control-label">ÕËºÅ</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="uname" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="pword" class="col-sm-2 control-label">ÃÜÂë</label>
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
                        <button type="submit" class="btn btn-default">µÇÂ¼</button>
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
                ×¢²áµÇÂ¼¹¦ÄÜ£¬²âÊÔÐ´×ÅÍæ£¬×¢²á³É¹¦ÔÝÊ±Ò²Ã»ÌáÊ¾£¬Ö±½ÓÈ¥ÓÒ±ßµÇÂ¼ÊÔÊÔ¡£µÇÂ¼½øÈ¥Ôò×¢²á³É¹¦£¬µÇÂ¼²»½øÈ¥ËãÄãµ¹Ã¹¡£
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