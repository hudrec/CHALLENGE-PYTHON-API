# CHALLENGE PYTHON TEST API 
Simple api example project.

## USED TECHNOLOGIES 
- Python
- Django
- Django Rest Framework
- Poetry
- Docker 
- Docker Compose 
- Postgres

## REQUIREMENTS: 
The following technologies must be installed on your OS.

- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/)

## ASSUMPTIONS

- All methods allowed in the CRUD.  
- The all env variables is located in ```docker/local.env```.


## INSTALLATION
For run the project locally first clone the repository and run the next command: 
```bash
docker-compose up -d --build app
```
### ENDPOINTS

The local port for the project is 8000 if you have already use the port change on ```docker-compose.yml```

The DRF layer environment (UI) for make the tests and all the methods of CRUD. 
The link of all root is : ```http://localhost:8080/api/```

#### Get the list of tasks 

Endpoint for get list of tasks. 

```http://localhost:8080/api/task/```

`METHOD: GET`

The example return is: 
```bash
[
    {
        "id": 1,
        "title": "hacer tarea",
        "description": "una ajskdlj kajskdjka jldjajls jlajldk a",
        "expired_date": "2023-12-24",
        "status": "En Proceso"
    },
    {
        "id": 2,
        "title": "hacer tarea 2",
        "description": "una ajskdlj kajskdjka jldjajls jlajldk a",
        "expired_date": "2023-12-24",
        "status": "En Proceso"
    }
    ...
]

```
#### Get specific task 
Endpoint for get the task data given the id of the task.
```http://localhost:8080/api/task/{id_task}/```

`METHOD: GET`

#### Create task 
Endpoint for create the task given the json data.
```http://localhost:8080/api/task/```

`CONTENT-TYPE: application/json`
`METHOD: POST`
```
RAW DATA: {
    "id": TASK_ID,
    "title": "TASK_TITLE",
    "description": "TASK_DESCRIPTION",
    "expired_date": "TASK_EXPIRED_DATE",
    "status": "TASK_STATUS"
}
```


#### Edit task 
Endpoint for edit the task data given the id of the task.
```http://localhost:8080/api/task/{id_task}/```

`CONTENT-TYPE: application/json`
`METHOD: PUT or PATCH`
```
RAW DATA: {
    "id": TASK_ID,
    "title": "TASK_TITLE",
    "description": "TASK_DESCRIPTION",
    "expired_date": "TASK_EXPIRED_DATE",
    "status": "TASK_STATUS"
}
```

#### Delete specific task 
Endpoint for delete the task data given the id of the task.
```http://localhost:8080/api/task/{id_task}/```

`METHOD: DELETE`

### ADMIN PAGE

For admin the entire data of tasks and create and admin permittions for user there is a page for the admin environment:

```http://localhost:8080/api/admin/```

#### DEFAULT CREDENTIAL OF ADMIN 
`USER: admin`
`PASSWORD: admin`

