<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <!--**********************************
        Nav header start
    ***********************************-->
    <div class="nav-header">
        <div class="brand-logo">
            <a href="index.html">
                <b style="font-size: 15px;font-family: 微软雅黑;color: black">学生毕业设计课题管理系统</b>
            </a>
        </div>
    </div>
    <!--**********************************
        Nav header end
    ***********************************-->

    <!--**********************************
        Header start
    ***********************************-->
    <div class="header">
        <div class="header-content clearfix">

            <div class="nav-control">
                <div class="hamburger">
                    <span class="toggle-icon"><i class="icon-menu"></i></span>
                </div>
            </div>
            <div class="header-left">
                <div class="input-group icons">
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                    </div>
                    <input type="search" class="form-control" placeholder="Search Dashboard" aria-label="Search Dashboard">
                    <div class="drop-down animated flipInX d-md-none">
                        <form action="#">
                            <input type="text" class="form-control" placeholder="Search">
                        </form>
                    </div>
                </div>
            </div>
            <div class="header-right">
                <ul class="clearfix">
                    <li class="icons dropdown d-none d-md-flex">
                        <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                            <span>English</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                        </a>
                        <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li><a href=" #">English</a></li>
                                    <li><a href=" #">Chinese</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="icons dropdown">
                        <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                            <span class="activity active"></span>
                            <img src="<%=request.getContextPath()%>/quixlab-master/images/user/1.png" height="40" width="40" alt="">
                        </div>
                        <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href="<%=request.getContextPath()%>/quixlab-master/app-profile.html"><i class="icon-user"></i> <span>Profile</span></a>
                                    </li>
                                    <li>
                                        <a href=" #">
                                            <i class="icon-envelope-open"></i> <span>Inbox</span> <div class="badge gradient-3 badge-pill gradient-1">3</div>
                                        </a>
                                    </li>

                                    <hr class="my-2">
                                    <li>
                                        <a href="../quixlab-master/page-lock.html"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                    </li>
                                    <li><a href="../quixlab-master/page-login.html"><i class="icon-key"></i> <span>Logout</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--**********************************
        Header end ti-comment-alt
    ***********************************-->

    <!--**********************************
        Sidebar start
    ***********************************-->
    <div class="nk-sidebar">
        <div class="nk-nav-scroll">
            <ul class="metismenu" id="menu">
                <li class="nav-label">功能选项</li>
                <li>
                    <a class="has-arrow" href="#" aria-expanded="false">
                        <i class="icon-speedometer menu-icon"></i><span class="nav-text">角色管理</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="<%=request.getContextPath()%>/view/role/role_list.jsp">角色查询/删除</a></li>
                        <li><a href="../index.jsp">角色修改</a></li>
                        <li><a href="../index.jsp">角色添加</a></li>
                    </ul>
                </li>
                <li class="mega-menu mega-menu-sm">
                    <a class="has-arrow" href=" #" aria-expanded="false">
                        <i class="icon-globe-alt menu-icon"></i><span class="nav-text">Layouts</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="../quixlab-master/layout-blank.html">Blank</a></li>
                        <li><a href="../quixlab-master/layout-one-column.html">One Column</a></li>
                        <li><a href="../quixlab-master/layout-two-column.html">Two column</a></li>
                        <li><a href="../quixlab-master/layout-compact-nav.html">Compact Nav</a></li>
                        <li><a href="../quixlab-master/layout-vertical.html">Vertical</a></li>
                        <li><a href="../quixlab-master/layout-horizontal.html">Horizontal</a></li>
                        <li><a href="../quixlab-master/layout-boxed.html">Boxed</a></li>
                        <li><a href="../quixlab-master/layout-wide.html">Wide</a></li>
                        <li><a href="../quixlab-master/layout-fixed-header.html">Fixed Header</a></li>
                        <li><a href="../quixlab-master/layout-fixed-sidebar.html">Fixed Sidebar</a></li>
                    </ul>
            </ul>
        </div>
    </div>
    <!--**********************************
        Sidebar end
    ***********************************-->




    <!--**********************************
        Footer start
    ***********************************-->

    <!--**********************************
        Footer end
    ***********************************-->
