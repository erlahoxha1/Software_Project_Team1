# Phase II: User Requirements and Application Specifications


## Chosen Development Model

We have chosen the Agile development model due to its flexibility and adaptability. It aligns well with modern software development needs. Unlike traditional plan-driven models, Agile supports incremental development, enabling software to be constructed and released in small, functional segments. This provides continuous feedback from stakeholders, ensuring that the evolving product meets their expectations. Agile is very effective for projects where requirements are uncertain, subject to frequent changes, or require close customer involvement. It also offers a simple design and reduces the time of delivering the software product to the market.

## User Requirements

### a. Stakeholders
### b. User Stories


## Functional Requirements

### a. Brief Description
### b. Acceptance Criteria


## Non-Functional Requirements

### a. Brief Description
### b. Acceptance Criteria


## Application Specifications

### a. Architecture
The system is designed as a mobile-centric, client–server architecture. The mobile app is built using Flutter (Dart) and will run on both iOS and Android devices. The backend is developed in Python (using Visual Studio as the IDE) with PostgreSQL as the database. Additional components include a machine learning module (potentially using Django for integration), PayPal for secure payment processing, and deployment on AWS or GCP to ensure scalability. This module allows for future enhancements and flexible integration of additional services.
Mobile Client: The Flutter app sends API requests to the backend server.
Backend API Server: Processes requests, manages business logic, and interacts with both the PostgreSQL database and the ML module.
Database: Stores data for users, products, and orders.
Machine Learning Module: Offers ML-powered features via RESTful calls.
Payment Gateway: Processes payments securely via PayPal.
Deployment Platform: Hosts the entire backend ecosystem and scales resources as required.
### b. Database Model
## Users Table (users)
- Stores information about buyers who register to search for car parts.
- Primary Key: user_id
- Relationships: No direct foreign keys, but related to orders.
## Sellers Table (sellers)
- Stores details of companies selling car parts.
- Primary Key: seller_id
- Relationships: Connected to car_parts table.
## Car Parts Table (car_parts)
- Stores scraped car part data and connects them to sellers.
- Primary Key: part_id
- Foreign Key: seller_id (references sellers.seller_id)
## Photo Table (photos)
- Keep track of product photos.
- Primary Key: photo_id
- Foreign Keys: part_id(references parts)
## Orders Table (orders)
- Tracks purchases made by users.
- Primary Key: order_id
- Foreign Keys: user_id (references users), part_id (references car_parts)
## Searches Table (searches)
- Stores user search queries for analytics and recommendations.
- Primary Key: search_id
- Foreign Key: user_id (references users)
## Constraints and Rules
1. Users & Sellers must have unique emails. We have chosen email as UNIQUE because:
User & Seller Identification:
- Email serves as a unique identifier for users and sellers during login.
- No two users or sellers can register with the same email, ensuring security.
Prevents Duplicate Accounts:
- If emails were not unique, users/sellers could accidentally create multiple accounts with the same email, causing confusion in authentication.
Password Reset & Communication:
- Emails are often used for password resets, verification, and notifications.
- If duplicates existed, it would be unclear which account the reset should apply to.
2. Each car part must belong to a seller.
3. Users can order multiple car parts.
4. A single search belongs to one user.
5. Car parts can be associated with multiple orders.
6. Users must be logged in to search or place orders.

### c. Technologies Used
✔ Django/Flask (Python) – Best for integrating ML models easily.
✔ PostgreSQL – Structured database for e-commerce (products, orders, customers).
✔ Flutter + REST API – Smooth communication between frontend and backend.
✔ Stripe/PayPal API – Secure and trusted payment processing.
### d. User Interface Design
### e. Security Measures
To ensure a secure user experience, the application implements multiple security measures and protocols. Encryption is enforced using SSL/TLS to protect data transmitted between the mobile client and the backend, preventing unauthorized interception. Authentication is handled through a secure login system with hashed passwords (e.g., bcrypt) and optional multi-factor authentication (MFA) for enhanced security. Data protection is ensured by encrypting sensitive user information in the PostgreSQL database, reducing the risk of breaches. Payment security is managed via PayPal, which provides built-in fraud detection and secure transaction processing. Additionally, role-based access control (RBAC) restricts user permissions, preventing unauthorized access to critical system functions. Regular security audits and penetration testing will be conducted to identify and mitigate vulnerabilities, ensuring the system remains resilient against threats.



