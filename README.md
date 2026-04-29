# 🛒 Product CRUD API - Spring Boot

A simple and clean **Spring Boot REST API** for managing products with basic CRUD operations.
This project demonstrates a layered architecture using **Controller, Service, and Repository**.

---

## 🚀 Features

* Create Product
* Get All Products
* Get Product by ID
* Get Products by Category
* Update Product (Full Update)
* Update Product Stock (Partial Update)
* Delete Product

---

## 🏗️ Tech Stack

* Java 17+
* Spring Boot 3+
* Spring Data JPA
* MySQL
* Lombok
* Maven

---

## 📁 Project Structure

```
src/main/java/com/example/product

├── controller       # REST Controllers  
├── service          # Business Logic  
├── repository       # JPA Repositories  
├── entity           # Entity Classes  
└── dto (optional)   # Request/Response DTOs  
```

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/product-crud-api.git
cd product-crud-api
```

---

### 2. Configure Database

Update `src/main/resources/application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/your_db
spring.datasource.username=root
spring.datasource.password=your_password

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

---

### 3. Run the Application

```bash
mvn spring-boot:run
```

Application will start at:

```
http://localhost:8080
```

---

## 📌 API Endpoints

### 🔹 Create Product

```
POST /api/products
```

**Request Body:**

```json
{
  "name": "Laptop",
  "category": "Electronics",
  "price": 55000,
  "stock": 10
}
```

---

### 🔹 Get All Products

```
GET /api/products
```

---

### 🔹 Get Product by ID

```
GET /api/products/{id}
```

---

### 🔹 Get Products by Category

```
GET /api/products/category?category=Electronics
```

---

### 🔹 Update Product (Full Update)

```
PUT /api/products/{id}
```

---

### 🔹 Update Stock (Partial Update)

```
PATCH /api/products/{id}/stock?stock=20
```

---

### 🔹 Delete Product

```
DELETE /api/products/{id}
```

---

## 🧪 Sample Data

```sql
INSERT INTO product (name, category, price, stock)
VALUES ('Mobile', 'Electronics', 20000.00, 25);
```

---

## 📌 Future Improvements

* Add DTO Layer
* Global Exception Handling
* Input Validation (`@Valid`)
* Swagger API Documentation
* Pagination & Sorting
* JWT Authentication
* Redis Caching

---

## 👨‍💻 Author

**Shivakumar Yadav G**
Java Backend Developer
Spring Boot | Microservices | MySQL

---

## 📄 License

This project is open-source and intended for learning purposes.
