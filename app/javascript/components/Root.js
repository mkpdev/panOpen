import React from "react"

const Root = (users) => {

  return (
    <>
      {Object.entries(users.users).map((value) =>{
        return (
          <div>
            <h3>user Id: {value[1].id}</h3>
            <h3>Book Name: {value[1].book_name}</h3>
            <h3>Course Name: {value[1].course_name}</h3>
            <h3>Email: {value[1].email}</h3>
            <h3>Reading Time: {value[1].reading_time}</h3>
            <hr />
          </div>
        )}
      )}
    </>
  );
}

export default Root