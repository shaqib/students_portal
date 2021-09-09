### Jenkins CI 
https://www.jenkins.io/

### About
Student Enrollment project is a basic Spring boot application that follows micro service architecture and exposes REST API endpoints supporting current business use cases.

### Prerequisites

- Maven
- Java 8
- Docker

### Design Features/Considerations
- Jenkins CI configured for builds, every commit starts a new build. 
- Maven multi module project and separates REST from DAO layer (can be easily separated into individual repos).
- Since there is only one Micro service at the moment so no Gateway endpoint added for sake of performance (YAGNI) 
- Spring Data JPA ready (default is H2)
- Cucumber BDD adoption for basic use cases (Show case only).
- Database design for the moment defines just one Entity, later we might want to normalize enrollment into - Student, Class & Enrollment entities.
- No Cache is used at the moment so in Future some distributed and highly fault tolerant Cache like Hazelcast can be used

## Running Application as Docker Image on Local Machine
cd enrollment-api
docker build -t blackone/student_enrollment .
docker run -p 8080:8080 -t blackone/student_enrollment

## Swagger API Documentation

http://localhost:8080/swagger-ui.html


