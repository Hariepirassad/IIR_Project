<?php
	if(isset($_POST['key'])){
		
		$conn = new mysqli('localhost', 'root','','university');
		
		if($_POST['key'] == 'getRowData'){
			$rowID = $conn->real_escape_string($_POST['rowID']);
			$sql = $conn->query("SELECT * FROM student WHERE StudentID='$rowID'");
			$data = $sql->fetch_array();
			$jsonArray = array(
				'StudentID' => $data['StudentID'],
				'Name' => $data['Name'],
				'Surname' => $data['Surname'],
				'CourseID' => $data['CourseID']
			);
			
			exit(json_encode($jsonArray));
		}
		
		if($_POST['key'] == 'getExistingData'){
			$start = $conn->real_escape_string($_POST['start']);
			$limit = $conn->real_escape_string($_POST['limit']);
			
			$sql = $conn->query("SELECT * FROM student LIMIT $start, $limit");
			if ($sql->num_rows > 0){
				$response = "";
				while($data = $sql->fetch_array()){
					$response .= ' 
						<tr>
							<td>'.$data["StudentID"].'</td>
							<td id="name_'.$data["StudentID"].'">'.$data["Name"].'</td>
							<td id="surname_'.$data["StudentID"].'">'.$data["Surname"].'</td>
							<td id="courseId_'.$data["StudentID"].'">'.$data["CourseID"].'</td>
							<td>
								<input type="button" onclick="edit('.$data["StudentID"].')" value="Edit" class="btn btn-primary">
								<input type="button" onclick="deleteRow('.$data["StudentID"].')" value="Delete" class="btn btn-danger">
							</td>
						</tr>
					';
				}
				exit($response);
			}else
				exit('reachedMax');
		}
		
		$rowID = $conn->real_escape_string($_POST['rowID']);
		
		if($_POST['key'] == 'deleteRow'){
			$conn->query("DELETE FROM student WHERE StudentID='$rowID'");
			exit('Student information deleted');
		}
		
		//$stuID = $conn->real_escape_string($_POST['stuID']);
		$stuName = $conn->real_escape_string($_POST['stuName']);
		$stuSurname = $conn->real_escape_string($_POST['stuSurname']);
		$stuCourseID = $conn->real_escape_string($_POST['stuCourseID']);
		
		if($_POST['key'] == 'updateRow'){
			$conn->query("UPDATE student SET Name='$stuName', Surname='$stuSurname', CourseID='$stuCourseID' WHERE StudentID='$rowID'");
			exit('success');
		}
		
		if($_POST['key'] == 'addNew'){
			$sql = $conn->query("SELECT * FROM student WHERE Name='$stuName' AND Surname='$stuSurname'");
			if ($sql->num_rows > 0)
				exit("This student is already in the database !");
			else{
				$conn->query("INSERT INTO student VALUES (null, '$stuName', '$stuSurname', '$stuCourseID')");
				exit('Student has been inserted in the database!');
			}
		}
	}
?>