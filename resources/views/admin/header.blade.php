<div class="page-main-header">
  <div class="main-header-right row m-0">
    <div class="main-header-left">
      <div class="logo-wrapper"><a href="index.html"><img class="img-fluid" src="{{asset('templates/default/admin/images/logo/logo.png')}}" alt=""></a></div>
      <div class="dark-logo-wrapper"><a href="index.html"><img class="img-fluid" src="{{asset('templates/default/admin/images/logo/dark-logo.png')}}" alt=""></a></div>
      <div class="toggle-sidebar"><i class="status_toggle middle" data-feather="align-center" id="sidebar-toggle"></i></div>
    </div>
    <div class="left-menu-header col">
      <ul>
        <li>
        @if(!empty($display_view['title'])) 
          <h6><i>{{$display_view['title']}}</i></h6>
          @endif
        </li>
      </ul>
    </div>
    <div class="nav-right col pull-right right-menu p-0">
      <ul class="nav-menus">
      @if(!empty($display_view['button_add'])) 
        <li><a class="text-dark" href="{{$display_view['button_add_href']}}"><i data-feather="file-plus"></i></a></li>
      @endif
      @if(!empty($display_view['button_save'])) 
        <li><a class="text-dark" href="#" onclick="submitForm()"><i data-feather="save"></i></a></li>
      @endif
      @if(!empty($display_view['button_list'])) 
        <li><a class="text-dark" href="{{$display_view['button_list_href']}}"><i data-feather="layers"></i></a></li>
      @endif
      @if(!empty($display_view['search_view'])) 
        <li class="onhover-dropdown">
          <div class="bookmark-box"><i data-feather="search"></i></div>
          <div class="bookmark-dropdown onhover-show-div">
            <div class="form-group mb-0">
              <div class="input-group">
                <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-search"></i></span></div>
                <input class="form-control" type="text" placeholder="Search here...">
              </div>
            </div>
          </div>
        </li>
      @endif 
        <li class="onhover-dropdown">
          <div class="notification-box"><i data-feather="bell"></i><span class="dot-animated"></span></div>
          <ul class="notification-dropdown onhover-show-div">
            <li>
              <p class="f-w-700 mb-0">You have 3 Notifications<span class="pull-right badge badge-primary badge-pill">4</span></p>
            </li>
            <li class="noti-primary">
              <div class="media"><span class="notification-bg bg-light-primary"><i data-feather="activity"> </i></span>
                <div class="media-body">
                  <p>Delivery processing </p><span>10 minutes ago</span>
                </div>
              </div>
            </li>
            <li class="noti-secondary">
              <div class="media"><span class="notification-bg bg-light-secondary"><i data-feather="check-circle"> </i></span>
                <div class="media-body">
                  <p>Order Complete</p><span>1 hour ago</span>
                </div>
              </div>
            </li>
            <li class="noti-success">
              <div class="media"><span class="notification-bg bg-light-success"><i data-feather="file-text"> </i></span>
                <div class="media-body">
                  <p>Tickets Generated</p><span>3 hour ago</span>
                </div>
              </div>
            </li>
            <li class="noti-danger">
              <div class="media"><span class="notification-bg bg-light-danger"><i data-feather="user-check"> </i></span>
                <div class="media-body">
                  <p>Delivery Complete</p><span>6 hour ago</span>
                </div>
              </div>
            </li>
          </ul>
        </li>
        <li><a class="text-dark" href="#!" onclick="javascript:toggleFullScreen()"><i data-feather="maximize"></i></a></li>
        <li><div class="mode"><i class="fa fa-moon-o"></i></div></li>
        <li class="onhover-dropdown p-0">
          <button class="btn btn-primary-light" type="button"><a href="login_two.html"><i data-feather="log-out"></i>Log out</a></button>
        </li>
      </ul>
    </div>
    <div class="d-lg-none mobile-toggle pull-right w-auto"><i data-feather="more-horizontal"></i></div>
  </div>
</div>