# Phase II: User Requirements and Application Specifications


## Chosen Development Model

We have chosen the Agile development model due to its flexibility and adaptability. It aligns well with modern software development needs. Unlike traditional plan-driven models, Agile supports incremental development, enabling software to be constructed and released in small, functional segments. This provides continuous feedback from stakeholders, ensuring that the evolving product meets their expectations. Agile is very effective for projects where requirements are uncertain, subject to frequent changes, or require close customer involvement. It also offers a simple design and reduces the time of delivering the software product to the market.

## User Requirements

### a. Stakeholders
The success of the Electroauto Parts App depends on multiple stakeholders who play a vital role in its development, operation, and usage. Below are the key stakeholders, their roles, and their interests in the project.

**i. Buyers (End-Users)** 
**Role:** Individuals looking for electroauto parts to repair or upgrade their vehicles.
Browse product listings, compare prices, and make purchases.
Use the image recognition feature to identify unknown car parts.
**Interests:** Access to high-quality car parts at competitive prices.
A smooth, user-friendly search and filtering system.

**ii. Sellers (Individuals, Auto Shops, and Automotive Electricians)** 
**Role:** List and sell new or used electricauto parts.
Manage inventory and communicate with potential buyers.
**Interests:** A well-structured platform to reach a targeted audience.
An easy-to-use listing process with high visibility.

**iii. Platform Developers & Technical Team** 
**Role:** Design, develop, and maintain the platform.
Implement search, filtering, messaging, payment, and ML-based image recognition features also ML based suggestions.
**Interests:** Ensuring the system is scalable, fast, and secure.
Optimizing the platform for a seamless user experience.
Maintaining uptime, fixing bugs, and implementing new features based on feedback.

**iv. Platform Owners & Investors** 
**Role:** Provide funding and strategic direction for the marketplace.
Ensure long-term growth, monetization, and business sustainability.
**Interests:** Generating revenue through transaction fees or partnerships.
Expanding user base and ensuring a strong market presence.
Maintaining a competitive edge through innovative features.

### b. User Story

The marketplace search system must be open for input. Click on the search bar and enter keywords related to the car part you need. You will be presented with filter options, including chassis number, car firm, part name,year make.
- If you know the exact part name, type the first few letters, and the system will display a list of matching parts. Select the correct part to view available listings.
- If you are unsure of the name, you can use the image recognition feature. Upload a photo of the car part, and the system will identify the most likely match. Confirm the identified part, and relevant listings will be displayed.
Once the correct part is selected, review the available listings, compare prices, and click on a seller’s listing for more details.

## Functional Requirements

**i. User Registration and Authentication**
**Brief Description:** Users must be able to sign up, log in, and log out so that only logged-in buyers can access and purchase parts from the catalog.
**Acceptance Criteria:**
- Users can create an account by providing basic details (name, email, password, etc.).
- The system validates that all required fields are complete and unique.
- Registered users can log in using their credentials.
- Users can log out, terminating their session securely.
- Password recovery and account verification processes are used.

**ii. Catalog Display and Browsing**
**Brief Description:** The app shall display a curated catalog of car parts gathered from different data sources. Buyers should be able to browse the catalog easily.
**Acceptance Criteria:**
- The catalog displays car parts with key information (name, image, description, price, etc.).
- The app uses infinite scrolling to manage long lists of parts.
- Detailed information for each part is accessible through a dedicated view.
- The catalog is refreshed periodically to include new data received from partner stores and manufacturers.

**iii. Search and Filtering Functionality**
**Brief Description:** Buyers must be able to search and filter the car parts catalog using criteria such as car firm, make year, part name , chassis, car model.
**Acceptance Criteria:**
- A search bar is present and accessible on the catalog page.
- Users can input keywords on the designated space to search for parts.
- Filter options are available and functional.
- The system displays results that accurately match the entered criteria.
- Changes in filters dynamically update the displayed results.

**iv. Product Detail View**
**Brief Description:** When a buyer selects a car part from the catalog, the system should provide a detailed view with comprehensive information about the product.
**Acceptance Criteria:**
- It shows images, detailed descriptions, pricing, and source information.
- Additional technical specifications or compatibility notes are displayed when available.
- The buyer can easily navigate back to the catalog or search results.
- The interface is user-friendly and clearly organized.

**v. Shopping Cart and Checkout Process**
**Brief Description:** Buyers should be able to add car parts to a shopping cart and complete the purchase through a secure checkout process.
**Acceptance Criteria:** 
- Buyers can add one or more parts to a shopping cart.
- The cart displays a summary of selected items, including prices and quantities.
- Buyers can update quantities or remove items from the cart.
- The checkout process includes secure input for shipping information and payment details.
- A confirmation message is displayed after a successful transaction, and order details are recorded in the user’s order history.

**vi. Secure Transaction Processing**
**Brief Description:** The system must securely handle payments and order processing to ensure the buyer’s financial and personal data is protected.
**Acceptance Criteria:** 
- Payment details are encrypted and processed securely.
- The system confirms successful payment before finalizing an order.
- Order statuses are updated in real time, and confirmation emails are sent to buyers.

**vii. Order History and Tracking**
**Brief Description:** Buyers should be able to view their past orders and track current purchases within their account.
**Acceptance Criteria:** 
- The user dashboard displays a list of all completed and pending orders.
- Detailed order information (items, prices, order status, date of purchase) is available.
- Buyers can click on an order to view further details.
- The system allows for status updates (e.g., order shipped, delivered) to be displayed.

## Non-Functional Requirements

**i. Performance & Speed**
**Brief Description:**  The system should provide fast response times for all key functionalities, ensuring a smooth user experience.
**Acceptance Criteria:** 
- Pages should load within 2 seconds under normal conditions.
- Search results and filter updates should be displayed within 1 second.
- Transactions and order processing should be completed within 5 seconds.

**ii. Scalability**
**Brief Description:**  The platform should support an increasing number of users, product listings, and transactions without performance degradation.
**Acceptance Criteria:** 
- The system must handle a large number of users without significant slowdown.
- Product listings should be efficiently stored and retrieved by the database.

**iii. Usability & User Experience**
**Brief Description:**  The marketplace should be easy to use, ensuring a seamless experience for buyers and sellers.
**Acceptance Criteria:** 
- Users should be able to complete key tasks (e.g., searching, listing, purchasing) in 7 or fewer steps.
- Navigation and interface elements should be accessible without prior training.

**iv. Security & Data Protection**
**Brief Description:**  The system must protect user data, including personal and payment information, from unauthorized access or breaches.
**Acceptance Criteria:** 
- User authentication must use secure password hashing.
- Payment details must be encrypted and processed through a trusted payment gateway.
- The system must comply with GDPR and other data protection regulations.
- Multi-factor authentication (MFA) must be available for account security.

**v. Availability & Reliability**
**Brief Description:** The platform should maintain high uptime and function without major service interruptions.
**Acceptance Criteria:** 
- Automated monitoring and error detection should notify administrators of critical failures.
- Backup and recovery mechanisms must be in place to prevent data loss.

**vi. Maintainability & Extensibility**
**Brief Description:** The system should be easy to maintain, debug, and extend with new features.
**Acceptance Criteria:**
- Code should be well-documented for easy updates and troubleshooting.
- New features should be integrated without disrupting existing functionalities.
- The system should support automated testing and deployment pipelines for smooth updates.

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



