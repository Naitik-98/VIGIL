import mysql.connector


def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="vigil_db"
    )



# TASKS


def get_tasks():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("SELECT * FROM tasks")
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    return rows


def insert_task(task):
    conn = get_connection()
    cursor = conn.cursor()

    sql = """
    INSERT INTO tasks
    (task_id, component, maintenance_type,
    last_service_date, next_service_date,
    cost, status, notes)

    VALUES (%s,%s,%s,%s,%s,%s,%s,%s)
    """

    values = (
        task["task_id"],
        task["component"],
        task["maintenance_type"],
        task["last_service_date"],
        task["next_service_date"],
        task["cost"],
        task["status"],
        task["notes"]
    )

    cursor.execute(sql, values)
    conn.commit()

    cursor.close()
    conn.close()


def update_task(task):

    conn = get_connection()
    cursor = conn.cursor()

    sql = """
    UPDATE tasks

    SET
    component=%s,
    maintenance_type=%s,
    last_service_date=%s,
    next_service_date=%s,
    cost=%s,
    status=%s,
    notes=%s

    WHERE task_id=%s
    """

    values = (
        task["component"],
        task["maintenance_type"],
        task["last_service_date"],
        task["next_service_date"],
        task["cost"],
        task["status"],
        task["notes"],
        task["task_id"]
    )

    cursor.execute(sql, values)
    conn.commit()

    cursor.close()
    conn.close()


def delete_task(task_id):

    conn = get_connection()
    cursor = conn.cursor()

    cursor.execute(
        "DELETE FROM tasks WHERE task_id=%s",
        (task_id,)
    )

    conn.commit()

    cursor.close()
    conn.close()



# HISTORY


def get_history():

    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("SELECT * FROM history")

    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    return rows


def insert_history(record):

    conn = get_connection()
    cursor = conn.cursor()

    sql = """
    INSERT INTO history
    (record_id, action, task_id,
    component, maintenance_type,
    status, cost, timestamp)

    VALUES (%s,%s,%s,%s,%s,%s,%s,%s)
    """

    values = (
        record["record_id"],
        record["action"],
        record["task_id"],
        record["component"],
        record["maintenance_type"],
        record["status"],
        record["cost"],
        record["timestamp"]
    )

    cursor.execute(sql, values)
    conn.commit()

    cursor.close()
    conn.close()




def replace_all_tasks(tasks):

    conn = get_connection()
    cursor = conn.cursor()

    
    cursor.execute("DELETE FROM tasks")

    sql = """
    INSERT INTO tasks
    (task_id, component, maintenance_type,
    last_service_date, next_service_date,
    cost, status, notes)
    VALUES (%s,%s,%s,%s,%s,%s,%s,%s)
    """

    for task in tasks:
        cursor.execute(sql, (
            task["task_id"],
            task["component"],
            task["maintenance_type"],
            task["last_service_date"],
            task["next_service_date"],
            task["cost"],
            task["status"],
            task["notes"],
        ))

    conn.commit()
    cursor.close()
    conn.close()


def replace_all_history(history):


    
    conn = get_connection()
    cursor = conn.cursor()

    cursor.execute("DELETE FROM history")

    sql = """
    INSERT INTO history
    (record_id, action, task_id,
    component, maintenance_type,
    status, cost, timestamp)
    VALUES (%s,%s,%s,%s,%s,%s,%s,%s)
    """

    for record in history:

        cursor.execute(sql, (
            record["record_id"],
            record["action"],
            record["task_id"],
            record["component"],
            record["maintenance_type"],
            record["status"],
            record["cost"],
            record["timestamp"],
        ))

    conn.commit()
    cursor.close()
    conn.close()