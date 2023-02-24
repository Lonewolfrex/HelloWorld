<html lang="en"><plasmo-csui></plasmo-csui><head>
    <title>Page Title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    * {
      box-sizing: border-box;
    }
    
    /* Style the body */
    body {
      font-family: Arial, Helvetica, sans-serif;
      margin: 0;
    }
    
    /* Header/logo Title */
    .header {
      padding: 80px;
      text-align: center;
      background: #1abc9c;
      color: white;
    }
    
    /* Increase the font size of the heading */
    .header h1 {
      font-size: 40px;
    }
    
    /* Sticky navbar - toggles between relative and fixed, depending on the scroll position. It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed). The sticky value is not supported in IE or Edge 15 and earlier versions. However, for these versions the navbar will inherit default position */
    .navbar {
      overflow: hidden;
      background-color: #333;
      position: sticky;
      position: -webkit-sticky;
      top: 0;
    }
    
    /* Style the navigation bar links */
    .navbar a {
      float: left;
      display: block;
      color: white;
      text-align: center;
      padding: 14px 20px;
      text-decoration: none;
    }
    
    
    /* Right-aligned link */
    .navbar a.right {
      float: right;
    }
    
    /* Change color on hover */
    .navbar a:hover {
      background-color: #ddd;
      color: black;
    }
    
    /* Active/current link */
    .navbar a.active {
      background-color: #666;
      color: white;
    }
    
    /* Column container */
    .row {  
      display: -ms-flexbox; /* IE10 */
      display: flex;
      -ms-flex-wrap: wrap; /* IE10 */
      flex-wrap: wrap;
    }
    
    /* Create two unequal columns that sits next to each other */
    /* Sidebar/left column */
    .side {
      -ms-flex: 30%; /* IE10 */
      flex: 30%;
      background-color: #f1f1f1;
      padding: 20px;
    }
    
    /* Main column */
    .main {   
      -ms-flex: 70%; /* IE10 */
      flex: 70%;
      background-color: white;
      padding: 20px;
    }
    
    /* Fake image, just for this example */
    .fakeimg {
      background-color: #aaa;
      width: 100%;
      padding: 20px;
    }
    
    /* Footer */
    .footer {
      padding: 20px;
      text-align: center;
      background: #ddd;
    }
    
    /* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
    @media screen and (max-width: 700px) {
      .row {   
        flex-direction: column;
      }
    }
    
    /* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
    @media screen and (max-width: 400px) {
      .navbar a {
        float: none;
        width: 100%;
      }
    }
    </style>
    </head>
    <body>
    
    <div class="header">
        <nav class="bg-gray-800">
            <div class="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
              <div class="relative flex h-16 items-center justify-between">
                <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
                  <!-- Mobile menu button-->
                  <button type="button" class="inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <!--
                      Icon when menu is closed.
          
                      Menu open: "hidden", Menu closed: "block"
                    -->
                    <svg class="block h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                    </svg>
                    <!--
                      Icon when menu is open.
          
                      Menu open: "block", Menu closed: "hidden"
                    -->
                    <svg class="hidden h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                  </button>
                </div>
                <div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
                  <div class="flex flex-shrink-0 items-center">
                    <img class="block h-8 w-auto lg:hidden" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=500" alt="Your Company">
                    <img class="hidden h-8 w-auto lg:block" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=500" alt="Your Company">
                  </div>
                  <div class="hidden sm:ml-6 sm:block">
                    <div class="flex space-x-4">
                      <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                      <a href="#" class="bg-gray-900 text-white px-3 py-2 rounded-md text-sm font-medium" aria-current="page">Dashboard</a>
          
                      <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Team</a>
          
                      <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Projects</a>
          
                      <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Calendar</a>
                    </div>
                  </div>
                </div>
                <div class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                  <button type="button" class="rounded-full bg-gray-800 p-1 text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800">
                    <span class="sr-only">View notifications</span>
                    <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M14.857 17.082a23.848 23.848 0 005.454-1.31A8.967 8.967 0 0118 9.75v-.7V9A6 6 0 006 9v.75a8.967 8.967 0 01-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 01-5.714 0m5.714 0a3 3 0 11-5.714 0" />
                    </svg>
                  </button>
          
                  <!-- Profile dropdown -->
                  <div class="relative ml-3">
                    <div>
                      <button type="button" class="flex rounded-full bg-gray-800 text-sm focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800" id="user-menu-button" aria-expanded="false" aria-haspopup="true">
                        <span class="sr-only">Open user menu</span>
                        <img class="h-8 w-8 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
                      </button>
                    </div>
          
                    <!--
                      Dropdown menu, show/hide based on menu state.
          
                      Entering: "transition ease-out duration-100"
                        From: "transform opacity-0 scale-95"
                        To: "transform opacity-100 scale-100"
                      Leaving: "transition ease-in duration-75"
                        From: "transform opacity-100 scale-100"
                        To: "transform opacity-0 scale-95"
                    -->
                    <div class="absolute right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none" role="menu" aria-orientation="vertical" aria-labelledby="user-menu-button" tabindex="-1">
                      <!-- Active: "bg-gray-100", Not Active: "" -->
                      <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-0">Your Profile</a>
                      <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-1">Settings</a>
                      <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-2">Sign out</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          
            <!-- Mobile menu, show/hide based on menu state. -->
            <div class="sm:hidden" id="mobile-menu">
              <div class="space-y-1 px-2 pt-2 pb-3">
                <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                <a href="#" class="bg-gray-900 text-white block px-3 py-2 rounded-md text-base font-medium" aria-current="page">Dashboard</a>
          
                <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Team</a>
          
                <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Projects</a>
          
                <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Calendar</a>
              </div>
            </div>
          </nav>
    </div>
    
    <div class="navbar">
      <a href="#" class="active">Home</a>
      <a href="#">Link</a>
      <a href="#">Link</a>
      <a href="#" class="right">Link</a>
    </div>
    
    <div class="row">
      <div class="side">
        <h2>About Me</h2>
        <h5>Photo of me:</h5>
        <div class="fakeimg" style="height:200px;">Image</div>
        <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
        <h3>More Text</h3>
        <p>Lorem ipsum dolor sit ame.</p>
        <div class="fakeimg" style="height:60px;">Image</div><br>
        <div class="fakeimg" style="height:60px;">Image</div><br>
        <div class="fakeimg" style="height:60px;">Image</div>
      </div>
      <div class="main">
        <h2>TITLE HEADING</h2>
        <h5>Title description, Dec 7, 2017</h5>
        <div class="fakeimg" style="height:200px;">Image</div>
        <p>Some text..</p>
        <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
        <br>
        <h2>TITLE HEADING</h2>
        <h5>Title description, Sep 2, 2017</h5>
        <div class="fakeimg" style="height:200px;">Image</div>
        <p>Some text..</p>
        <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      </div>
    </div>
    
    <div class="footer">
      <h2>Footer</h2>
    </div>
    
    
    
    </body></html>