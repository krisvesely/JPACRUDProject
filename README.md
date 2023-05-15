# JPACRUDProject

## Overview
This application allows users to orgainize maintenance tasks and projects for their household. Each task can be populated with fields including task name, category, frequency, dates last completed and required, and . Users create, read, update, and delete task rows within a single table database as they're interacting with the pages. 

## Technology
- Java
- Spring Tool Suite
- MySQL
- MySQL Workbench
- JPA
- JPQL
- Spring Boot
- Git


## Lessons Learned
- Use of JPQL to formulate queries in the DAO implementation class, including bind parameters.
- The Task class in annotated as an Entity with a Generated Value ID.
- Generates a detached entity when users create or update a Task. Managed entities are then persisted, or found and manipulated, according to user inputs.
- Form field elements include attributes that require User inputs that are compatible with the entity fields and table column data types. 
- For the Update Task form, expression leanguage allows the User to view existing values, when applicable. If they are not updated by the User, then they are passed as a field of the Task command object, for consistency.
- DAO implementation class is annotated as Transactional and Service withe a Persistent entity manager, allowing for streamlined entity manipulation methods. 
- Protects agains null pointer exceptions in the Task class and DAO implementation class, 
so that Users do not need to enter every single field when creating a new Task row.
- Use of JSP conditionals to customize content within the Result page, depending upon which Controller path mapped to the page.
- Use of Bootstrap library and custom CSS stylesheet to improve render.




