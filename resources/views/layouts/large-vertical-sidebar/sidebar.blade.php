<div class="side-content-wrap">
    <div class="sidebar-left open rtl-ps-none" data-perfect-scrollbar data-suppress-scroll-x="true" style="
    background: #003473;">
        <ul class="navigation-left">
            <li class="nav-item {{ request()->is('dashboard/*') ? 'active' : '' }}">
                <a class="nav-item-hold" href="{{route('dashboard')}}">
                    <i class="nav-icon i-Bar-Chart" style="color:white"></i>
                    <span class="nav-text" style="color:white">{{__('Dashboard')}}</span>
                </a>
                <div class="triangle"></div>
            </li>


            <?php  $user =  Auth::user(); if($user->login_type == "Admin" || $user->login_type == "Business Owner"){?>
            <li class="nav-item {{ request()->is('roles/*') ? 'active' : '' }}">
                <a class="nav-item-hold" href="{{route('roles.index')}}">
                    <i class="nav-icon i-Library" style="color:white"></i>
                    <span class="nav-text" style="color:white">{{__('Roles')}}</span>
                </a>
                <div class="triangle"></div>
            </li>
           
            <li class="nav-item {{ request()->is('users/*') ? 'active' : '' }}" data-item="user">
                <a class="nav-item-hold" href="">
                    <i class="nav-icon i-File-Clipboard-File--Text" style="color:white"></i>
                    <span class="nav-text" style="color:white">{{__('Type')}}</span>
                </a>
                <div class="triangle"></div>
            </li>

             <?php }  ?>
        
            

        </ul>
    </div>

    <div class="sidebar-left-secondary rtl-ps-none" data-perfect-scrollbar data-suppress-scroll-x="true">
        
    <ul class="childNav" data-parent="user">
           
           <li class="nav-item">
               <a class="{{ Route::currentRouteName()=='death' ? 'open' : '' }}" href="{{route('death')}}">
                   <i class="nav-icon i-File-Clipboard-Text--Image"></i>
                   <span class="item-name">{{__('Death')}}</span>
               </a>
           </li>
           
       
           <li class="nav-item">
           <a class="{{ Route::currentRouteName()=='general' ? 'open' : '' }}" href="{{route('general')}}">
                   <i class="nav-icon i-File-Clipboard-Text--Image"></i>
                   <span class="item-name">{{__('General')}}</span>
               </a>
           </li>

           <li class="nav-item">
           <a class="{{ Route::currentRouteName()=='medical' ? 'open' : '' }}" href="{{route('medical')}}">
                   <i class="nav-icon i-File-Clipboard-Text--Image"></i>
                   <span class="item-name">{{__('Medical')}}</span>
               </a>
           </li>

           <li class="nav-item">
           <a class="{{ Route::currentRouteName()=='blood_donation' ? 'open' : '' }}" href="{{route('blood_donation')}}">
                   <i class="nav-icon i-File-Clipboard-Text--Image"></i>
                   <span class="item-name">{{__('Blood Donation')}}</span>
               </a>
           </li>

       </ul>   

        
    </div>
    <div class="sidebar-overlay"></div>
</div>
<!--=============== Left side End ================-->