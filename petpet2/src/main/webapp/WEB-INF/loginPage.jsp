<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<style>
body {
    margin: 0;
    color: #6a6f8c;
    background: #c8c8c8;
    background-image:url("img");
    font: 600 16px/18px 'Open Sans', sans-serif
    
}


.login-box {
    width: 100%;
    margin: auto;
    max-width: 525px;
    min-height: 670px;
    position: relative;
    left:500px
   
    box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19)
}

.login-snip {
    width: 100%;
    height: 100%;
    position: relative;
    left:500px ;
    padding: 90px 70px 391px 70px;
    background: #00adee;
    margin-top: 10px;
}

.login-snip .login,
.login-snip .sign-up-form {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    position: absolute;
    transform: rotateY(180deg);
    backface-visibility: hidden;
    transition: all .4s linear
}

.login-snip .sign-in,
.login-snip .sign-up,
.login-space .group .check {
    display: none
}

.login-snip .tab,
.login-space .group .label,
.login-space .group .button {
    text-transform: uppercase
}

.login-snip .tab {
    font-size: 22px;
    margin-right: 15px;
    padding-bottom: 5px;
    margin: 0 15px 10px 0;
    display: inline-block;
    border-bottom: 2px solid transparent
}

.login-snip .sign-in:checked+.tab,
.login-snip .sign-up:checked+.tab {
    color: #fff;
    border-color: #1161ee
}

.login-space {
    min-height: 345px;
    position: relative;
    perspective: 1000px;
    transform-style: preserve-3d
}

.login-space .group {
    margin-bottom: 15px
}

.login-space .group .label,
.login-space .group .input,
.login-space .group .button {
    width: 100%;
    color: #fff;
    display: block
}

.login-space .group .input,
.login-space .group .button {
    border: none;
    padding: 15px 20px;
    border-radius: 25px;
    background: rgba(255, 255, 255, .1);
    color:black;
}

.login-space .group input[data-type="password"] {
    text-security: circle;
    -webkit-text-security: circle
}

.login-space .group .label {
    color: #aaa;
    font-size: 12px
}

.login-space .group .button {
    background: #1161ee
}

.login-space .group label .icon {
    width: 15px;
    height: 15px;
    border-radius: 2px;
    position: relative;
    display: inline-block;
    background: rgba(255, 255, 255, .1)
}

.login-space .group label .icon:before,
.login-space .group label .icon:after {
    content: '';
    width: 10px;
    height: 2px;
    background: #fff;
    position: absolute;
    transition: all .2s ease-in-out 0s
}

.login-space .group label .icon:before {
    left: 3px;
    width: 5px;
    bottom: 6px;
    transform: scale(0) rotate(0)
}

.login-space .group label .icon:after {
    top: 6px;
    right: 0;
    transform: scale(0) rotate(0)
}

.login-space .group .check:checked+label {
    color: #fff
}

.login-space .group .check:checked+label .icon {
    background: #1161ee
}

.login-space .group .check:checked+label .icon:before {
    transform: scale(1) rotate(45deg)
}

.login-space .group .check:checked+label .icon:after {
    transform: scale(1) rotate(-45deg)
}

.login-snip .sign-in:checked+.tab+.sign-up+.tab+.login-space .login {
    transform: rotate(0)
}

.login-snip .sign-up:checked+.tab+.login-space .sign-up-form {
    transform: rotate(0)
}

*,
:after,
:before {
    box-sizing: border-box
}

.clearfix:after,
.clearfix:before {
    content: '';
    display: table
}

.clearfix:after {
    clear: both;
    display: block
}

a {
    color: inherit;
    text-decoration: none
}

.hr {
    height: 2px;
    margin: 60px 0 50px 0;
    background: rgba(255, 255, 255, .2)
}

.foot {
    text-align: center
}

.card {
    width: 500px;
    left: 100px
}
h2{
color: white;
}

::placeholder {
    color: #b3b3b3
}
</style>
</head>
<body>
<div class="row">

    <div class="col-md-6 mx-auto p-0">
        <div class="card">
            <div class="login-box">
                <div class="login-snip">
                <h2>Welcome to PETPET</h2>
                 <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                    <div class="login-space">
                        <div class="login">
                        <c:out value="${error}"/>
                        <form:form action="/login" method="post" modelAttribute="userlog">
                        
                        
                        <div class="group">
                        <form:label for="user" class="label" path="email">Email:</form:label>
                        <form:input id="pass"  class="input"  path="email"/> 
                        <form:errors path="email"/>
                        </div>
                        
                        
                     
                        
                        <div class="group">
                        <form:label for="user" class="label" path="password">password</form:label>
                        <form:input id="pass" type="password" class="input" data-type="password" path="password"/>
                        <form:errors path="password"/>
                        </div>
                        
                       
                        
                      
                        
                        <div class="group"> <input type="submit" class="button" value="Sign In"> </div>
                        
                        </form:form>
                       <!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                     	<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                    
                        </div>
                        <div class="sign-up-form">
                        <form:form action="/loginasuser" method="post" modelAttribute="userlog" >
                        
                        <div class="group">
                        <form:label for="user" class="label" path="name">name</form:label>
                        <form:input id="pass"  class="input"  path="name"/>
                        <form:errors path="name"/>
                        </div>
                        <div class="group">
                        <form:label for="user" class="label" path="email">email</form:label>
                        <form:input id="pass" type="email" class="input"  path="email"/>
                        <form:errors path="email"/>
                        </div>
                        
                        
                        <div class="group">
                        <form:label for="user" class="label" path="password">password</form:label>
                        <form:input id="pass" type="password" class="input" data-type="password" path="password"/>
                        <form:errors path="password"/>
                        </div>
                        
                        <div class="group">
                        <form:label for="user" class="label" path="passwordConfirmation">passwordConfirmation</form:label>
                        <form:input id="pass" type="password" class="input" data-type="password" path="passwordConfirmation"/>
                        <form:errors path="passwordConfirmation"/>
                        </div>
                        
                         <div class="group">
                        <form:label for="user" class="label" path="location">Location:</form:label>
                        <form:input id="pass"  class="input"  path="location"/>
                        <form:errors path="location"/>
                        </div>
                     
                        <form:select id="pass" class="input"  path="city">
   		
   								<c:forEach items="${city}" var="c">
     							<form:option value="${c}"><c:out value="${c.name}"/> </form:option>
        						</c:forEach>
								</form:select>
								
								<div class="group"> <input type="submit" class="button" value="Sign Up"> </div>
                            <div class="hr"></div>
								
                        </form:form>
        
                             </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>