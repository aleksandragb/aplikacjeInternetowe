document.addEventListener('DOMContentLoaded', function () {
    const menuBtn = document.getElementById('menu-btn');
    const menu = document.querySelector('.menu');

    const notificationBtn = document.getElementById('notification-btn');
    const notifications = document.querySelector('.notifications');

    menuBtn.addEventListener('click', function () {
        menu.style.display = menu.style.display === 'flex' ? 'none' : 'flex';
    });

    notificationBtn.addEventListener('click', function () {
        notifications.style.display = notifications.style.display === 'flex' ? 'none' : 'flex';
    });
});
