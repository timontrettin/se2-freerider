# E2: *se2-freerider* SpringData JPA &nbsp; (<span style="color:red"> 12 Pts </span>)

Goal of this assignment is to connect to the *db-freerider*
[database](https://github.com/sgra64/db-freerider)
via the
[*Spring Data JPA*](https://spring.io/projects/spring-data-jpa)
interface.


### Challenges

1. [Challenge 1:](#1-build-project-from-branches) Build Project from Branches - (2 Pts)

2. [Challenge 2:](#2-follow-spring-guide-accessing-data-with-jpa) Follow Spring Guide: *Accessing Data with JPA* - (2 Pts)

3. [Challenge 3:](#3-build-entity-classes) Build *@Entity* Classes - (2 Pts)

4. [Challenge 4:](#4-build-repositories) Build *Repositories* - (2 Pts)

5. [Challenge 5:](#5-implement-logic) Implement Logic - (2 Pts)

6. [Challenge 6:](#6-check-branch-into-your-remote-repository) Check Branch into Your Remote Repository - (2 Pts)


&nbsp;

---
## 1. Build Project from Branches

### Step 1: Build Branches

Development for this assignment will be on a new "*feature*" branch `e2-springdata-jpa`.

Create this branch based on the first commit.

```sh
git log --oneline           # show commit history
```
```
...
5795064 update .env/setenv.sh, fixed coverage_report spelling
da6ea7b update .env/setenv.sh (+jacoco), .gitignore
2c438ae commit initial project files and sources
f5659e4 base commit, .gitignore only            <-- first commit: f5659e4
```

Create new branch off the first commit:

```sh
git checkout f5659e4                    # set HEAD to first commit (detached head mode)
git checkout -b e2-springdata-jpa       # create new branch
```

Pull branch
[maven-jdbc](https://github.com/sgra64/se2-freerider/tree/maven-jdbc)
into new branch (git pull: *fetch* and *merge*):

<!--
git remote add se2-downstream git@github.com:sgra64/se2-freerider.git
git remote add se2-downstream https://github.com/sgra64/se2-freerider.git

git pull se2-downstream --allow-unrelated-histories --strategy-option theirs maven-jdbc
git pull se2-downstream --allow-unrelated-histories --strategy-option theirs data
-->

```sh
# add git-link to downstream repository
git remote add se2-downstream https://github.com/sgra64/se2-freerider.git

# fetch branches 'maven-jdbc' and 'data' from the downstream repository
git fetch se2-downstream maven-jdbc:maven-jdbc
git fetch se2-downstream data:data

# merge fetched branch 'maven-jdbc' into 'e2-springdata-jpa'
git merge --allow-unrelated-histories maven-jdbc

# merge fetched 'data'-branch into 'e2-springdata-jpa'
git merge --allow-unrelated-histories data
```

With the merge came the files for the `FREERIDER_DB` database:

```
Updating 7f95f0b..41bdd57
Fast-forward
 .vscode/settings.json                      |   2 +-
 FREERIDER_DB.session.sql                   |   1 +
 README.md                                  | 713 ++++++++++++++++++++++++++++-
 docker-compose.yml                         |  26 ++
 services/freerider_db/Dockerfile           |  21 +
 services/freerider_db/access.sql           |  25 +
 services/freerider_db/datetime.txt         |  29 ++
 services/freerider_db/drop_data.sql        |   8 +
 services/freerider_db/howto.txt            |  62 +++
 services/freerider_db/load_sample_data.sql |  28 ++
 services/freerider_db/schema.sql           |  44 ++
 11 files changed, 957 insertions(+), 2 deletions(-)
 create mode 100644 FREERIDER_DB.session.sql
 create mode 100644 docker-compose.yml
 create mode 100644 services/freerider_db/Dockerfile
 create mode 100644 services/freerider_db/access.sql
 create mode 100644 services/freerider_db/datetime.txt
 create mode 100644 services/freerider_db/drop_data.sql
 create mode 100644 services/freerider_db/howto.txt
 create mode 100644 services/freerider_db/load_sample_data.sql
 create mode 100644 services/freerider_db/schema.sql
```

```
Merge made by the 'ort' strategy.
 data/customers.sql    | 221 ++++++++++++++++++++++++++++++++++++++++
 data/reservations.sql |  10 ++
 data/vehicles.sql     | 271 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 502 insertions(+)
 create mode 100644 data/customers.sql
 create mode 100644 data/reservations.sql
 create mode 100644 data/vehicles.sql
```

Verify files are present:

```sh
ls -la; find services data
```

Output:

```
total 57
drwxr-xr-x 1 svgr2 Kein     0 Jun 20 23:59 .
drwxr-xr-x 1 svgr2 Kein     0 Jun 20 23:39 ..
drwxr-xr-x 1 svgr2 Kein     0 Jun 20 23:53 .git
-rw-r--r-- 1 svgr2 Kein  1329 Jun 20 23:49 .gitignore
drwxr-xr-x 1 svgr2 Kein     0 Jun 20 23:51 .vscode
drwxr-xr-x 1 svgr2 Kein     0 Jun 20 23:52 data
-rw-r--r-- 1 svgr2 Kein   629 Jun 20 23:51 docker-compose.yml
-rw-r--r-- 1 svgr2 Kein    24 Jun 20 23:51 FREERIDER_DB.session.sql
-rw-r--r-- 1 svgr2 Kein  1781 Jun 20 21:41 pom.xml
-rw-r--r-- 1 svgr2 Kein 32677 Jun 20 23:54 README.md
drwxr-xr-x 1 svgr2 Kein     0 Jun 20 23:51 services
drwxr-xr-x 1 svgr2 Kein     0 Jun 20 23:55 src
services
services/freerider_db
services/freerider_db/access.sql
services/freerider_db/datetime.txt
services/freerider_db/Dockerfile
services/freerider_db/drop_data.sql
services/freerider_db/howto.txt
services/freerider_db/load_sample_data.sql
services/freerider_db/schema.sql
data
data/customers.sql
data/reservations.sql
data/vehicles.sql
```

Start the database using
[docker-compose.yml](https://github.com/sgra64/se2-freerider/blob/maven-jdbc/docker-compose.yml):

```sh
docker-compose start
```

Check that the database is running.


### Step 2: Build Code

Create a Spring
[*"initializr"*]()
and add to project with

```
Group: de.freerider
Artifact: e2-springdata-jpa
Version: 0.0.1-SNAPSHOT
```

```sh
ls -la                  # show new content
```
```
drwxr-xr-x 1 svgr2 Kein    0 Jun 20 21:16 .
drwxr-xr-x 1 svgr2 Kein    0 Jun 20 20:53 ..
drwxr-xr-x 1 svgr2 Kein    0 Jun 20 21:09 .git
-rw-r--r-- 1 svgr2 Kein 1329 Jun 20 19:57 .gitignore
drwxr-xr-x 1 svgr2 Kein    0 Jun 20 21:01 .vscode
-rw-r--r-- 1 svgr2 Kein  629 Jun 20 21:01 docker-compose.yml
-rw-r--r-- 1 svgr2 Kein   24 Jun 20 21:01 FREERIDER_DB.session.sql
-rw-r--r-- 1 svgr2 Kein 1413 Jun 20 21:16 pom.xml           <-- pom.xml from initialzr
-rw-r--r-- 1 svgr2 Kein 4969 Jun 20 21:17 README.md
drwxr-xr-x 1 svgr2 Kein    0 Jun 20 21:01 services
drwxr-xr-x 1 svgr2 Kein    0 Jun 20 21:16 src               <-- src from initialzr
```

Build and run the code:
<!-- 
mvn dependency:tree     # show dependency tree
mvn spring-boot:run --quiet
 -->

```sh
mvn compile                             # compile code from src to target

mvn spring-boot:run --quiet             # run compiled code with mvn


mvn package -DskipTests=true --quiet    # package to .jar in target directory

# run the packaged artefact
java -jar target/e2-springdata-jpa-0.0.1-SNAPSHOT.jar


# build classpath file from maven
mvn -q dependency:build-classpath -Dmdep.outputFile=classpath

# set CLASSPATH from classpath file (Mac: use ':' as separator, not ';')
export CLASSPATH="target/classes;$(cat classpath)"

# run the program directly
java de.freerider.e2_springdata_jpa.E2SpringdataJpaApplication

```

Output:

```
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/

 :: Spring Boot ::                (v3.3.1)

2024-06-21T00:08:24.296+02:00  INFO 6640 --- [e2-springdata-jpa] [           main] d.f.e.E2SpringdataJpaApplication         : Starting E2SpringdataJpaApplication using Java 21 with PID 6640 (C:\Sven1\svgr\workspaces\2-SE\se2-freerider\branches\e2-springdata-jpa\target\classes started by svgr2 in C:\Sven1\svgr\workspaces\2-SE\se2-freerider\branches\e2-springdata-jpa)
2024-06-21T00:08:24.300+02:00  INFO 6640 --- [e2-springdata-jpa] [           main] d.f.e.E2SpringdataJpaApplication         : No active profile set, falling back to 1 default profile: "default"
2024-06-21T00:08:25.044+02:00  INFO 6640 --- [e2-springdata-jpa] [           main] d.f.e.E2SpringdataJpaApplication         : Started E2SpringdataJpaApplication in 1.25 seconds (process running for 1.852)
```


&nbsp;

---
## 2. Follow Spring Guide: *Accessing Data with JPA*

Follow the Spring Guide:
[*Accessing Data with JPA*](https://spring.io/guides/gs/accessing-data-jpa)
(skip the *initializr* step). The code repository is
[https://github.com/spring-guides/gs-accessing-data-jpa](https://github.com/spring-guides/gs-accessing-data-jpa).

Try the example (using the *H2* database - configure `pom.xml` accordingly,
see example in Spring Guide).
[*H2*](https://h2database.com/html/main.html) is an embedded SQL database.
*H2* is implemented in Java and therefore can be included in a Spring Boot project
by a simple dependency in `pom.xml`:

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-jpa</artifactId>
</dependency>

<dependency>
    <groupId>com.h2database</groupId>
    <artifactId>h2</artifactId>
    <scope>runtime</scope>
</dependency>
```

Disable the `@SpringBootApplication` annotation in
`de.freerider.e2_springdata_jpa.E2SpringdataJpaApplication`:

```java
package de.freerider.e2_springdata_jpa;

// @SpringBootApplication
public class E2SpringdataJpaApplication {

    public static void main(String[] args) {
        SpringApplication.run(E2SpringdataJpaApplication.class, args);
    }
}
```

since the demo from the Guide uses its own `@SpringBootApplication` annotation in:

```java
package com.example.accessingdatajpa;

@SpringBootApplication
public class AccessingDataJpaApplication {
    ...
}
```

Compile and run the demo from the Guide:

```sh
mvn compile spring-boot:run --quiet  | grep Customer
```

Output:

```
2024-06-20T21:51:38.551+02:00  INFO - [e2-springdata-jpa]: Customers found with findAll():
2024-06-20T21:51:38.681+02:00  INFO - [e2-springdata-jpa]: Customer[id=1, firstName='Jack', lastName='Bauer']
2024-06-20T21:51:38.681+02:00  INFO - [e2-springdata-jpa]: Customer[id=2, firstName='Chloe', lastName='O'Brian']
2024-06-20T21:51:38.681+02:00  INFO - [e2-springdata-jpa]: Customer[id=3, firstName='Kim', lastName='Bauer']
2024-06-20T21:51:38.681+02:00  INFO - [e2-springdata-jpa]: Customer[id=4, firstName='David', lastName='Palmer']
2024-06-20T21:51:38.681+02:00  INFO - [e2-springdata-jpa]: Customer[id=5, firstName='Michelle', lastName='Dessler']
2024-06-20T21:51:38.693+02:00  INFO - [e2-springdata-jpa]: Customer found with findById(1L):
2024-06-20T21:51:38.693+02:00  INFO - [e2-springdata-jpa]: Customer[id=1, firstName='Jack', lastName='Bauer']
2024-06-20T21:51:38.693+02:00  INFO - [e2-springdata-jpa]: Customer found with findByLastName('Bauer'):
2024-06-20T21:51:38.757+02:00  INFO - [e2-springdata-jpa]: Customer[id=1, firstName='Jack', lastName='Bauer']
2024-06-20T21:51:38.757+02:00  INFO - [e2-springdata-jpa]: Customer[id=3, firstName='Kim', lastName='Bauer']
```

Understand code in
[src/main/java/com/example/accessingdatajpa](https://github.com/spring-guides/gs-accessing-data-jpa/tree/main/complete/src/main/java/com/example/accessingdatajpa):

- [Customer.java](https://github.com/spring-guides/gs-accessing-data-jpa/blob/main/complete/src/main/java/com/example/accessingdatajpa/Customer.java) and

- [CustomerRepository.java](https://github.com/spring-guides/gs-accessing-data-jpa/blob/main/complete/src/main/java/com/example/accessingdatajpa/CustomerRepository.java)

Understand
[Interface CrudRepository<T,ID>](https://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/CrudRepository.html)
for repository methods.



&nbsp;

---
## 3. Build *@Entity* Classes

Define `@Entity` classes for the classes of the `FREERIDER_DB` database.



&nbsp;

---
## 4. Build *Repositories*

Define `@Entity` classes for the classes of the `FREERIDER_DB` database.



&nbsp;

---
## 5. Implement Logic

Switch the database from *H2* to the `FREERIDER_DB` database.
Replace the *H2* dependency with the one for the *mysql-connector* driver and
include database connection information in `src/resources/application.properties`:

```yaml
spring.datasource.url: jdbc:mysql://localhost:3306/FREERIDER_DB
spring.datasource.username: freerider
spring.datasource.password: free.ride
```

Repositories for `CUSTOMER`, `VEHICLE` and `RESERVATION` now connect to
tables in the `FREERIDER_DB` database - assuming that correcsponding
`@Entity` classes match the database schema.

Implement logic that shows all customers and all reservations
of customer `id: 2`.

Load the full dataset fetched from the `maven-jdbc` branch in the
[data](https://github.com/sgra64/se2-freerider/tree/maven-jdbc/data)
directory into the `FREERIDER_DB` database.



&nbsp;

---
## 6. Check Branch into Your Remote Repository

Check Branch `e2-springdata-jpa` into your remote repository.


