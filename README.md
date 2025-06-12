# Authentication System

A modern authentication system with registration, login, and password reset functionality.

## Features

- User Registration
- User Login
- Password Reset with Email Verification
- Modern UI with Tailwind CSS
- Responsive Design
- Secure Password Hashing
- MySQL Database Storage

## Prerequisites

- PHP 7.4 or higher
- MySQL 5.7 or higher
- Web server (Apache/Nginx)

## Setup Instructions

1. Clone this repository to your web server's document root:
```bash
git clone https://github.com/yourusername/auth-system.git
```

2. Configure your database:
   - Create a MySQL database
   - Update the database credentials in `api/config.php`
   - The tables will be created automatically when you first access the application

3. Configure your web server:
   - Point your web server to the project directory
   - Ensure PHP has permission to write to the directory
   - Enable PHP MySQL extension

4. Access the application:
   - Open your browser and navigate to the project URL
   - Start with registration at `/register.html`

## Security Notes

For production use, make sure to:

1. Use HTTPS
2. Implement proper session management
3. Add rate limiting for login attempts
4. Set up proper email sending for verification codes
5. Remove the verification code from API responses
6. Add CSRF protection
7. Implement proper input validation
8. Set secure headers
9. Configure proper error handling

## Directory Structure

```
auth-system/
├── api/
│   ├── config.php
│   ├── login.php
│   ├── register.php
│   ├── forgot-password.php
│   └── reset-password.php
├── js/
│   └── api.js
├── login.html
├── register.html
├── forgot-password.html
└── README.md
```

## Contributing

Feel free to submit issues and enhancement requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details. 