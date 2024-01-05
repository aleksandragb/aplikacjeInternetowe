<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/public/css/home.css"> 
    <script src="/public/js/home.js" defer></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Home</title>
</head>
<body>
    <div class="top-panel">
        <div class="left">
            <button id="menu-btn">
                <i class="material-icons">dehaze</i>
            </button>
            <div class="menu">
                <a href="#">My Account</a>
                <a href="#">Calendar</a>
                <a href="#">Interested</a>
                <a href="#">Settings</a>
                <a href="#">Helps & FAQs</a>
                <a href="#">Contact Us</a>
                <a href="#">Sign Out</a>
            </div>
        </div>
        <div class="center">
            <input type="text" placeholder="Search events...">
        </div>
        <div class="right">
            <button id="notification-btn">
            <i class="material-icons">notifications_none</i>
            </button>
            <div class="notifications">
                <a href="#">Interested</a>
                <a href="#">Settings</a>

            </div>
        </div>
    </div>

    <div class="event-container">
        <div class="event">
            <h2>Nazwa Wydarzenia</h2>
            <p>Data: DD/MM/YYYY</p>
            <p>Miejsce: Miejsce</p>
            <p>Krótki opis wydarzenia...</p>
            <button>Details</button>
        </div>
        <!-- Dodaj więcej wydarzeń tutaj -->
    </div>


    <div class="bottom-panel">
        <div class="icon-buttons">
            <a href="#"><i class="material-icons">explore</i><span>Explore</span></a>
            <a href="#"><i class="material-icons">person</i><span>Account</span></a>
            <a href="#"><i class="material-icons">view_array</i><span>Tickets</span></a>
            <a href="#"><i class="material-icons">add_circle</i><span>Report</span></a>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
