<?php
    header("content-type:application/json;charset=utf-8"); // set the content

    $error = false;

    $id_contacts;
    $name = htmlspecialchars(trim($_POST['name']));
    $email = htmlspecialchars(trim($_POST['email']));
    $phone = htmlspecialchars(trim($_POST['phone']));
    $message = htmlspecialchars(trim($_POST['message']));
    $dates;

    //you can do whatever you want with your post data
    //Store in the database for expample or sent by email

    //check if all inputs are not empty
    if (empty($name) || empty($email) || empty($phone) || empty($message))
    	$error = true;

    	include 'bdd/bdd.php';
        // Enregistrement du compte apres verififcation
        $stmt = $connect->prepare("INSERT INTO dfh_contacts (id_contacts,name,email,phone,message,dates) VALUES (:id_contacts, :name, :email,:phone,:message,:dates)");
        $stmt->bindParam(':id_contacts', $id_contacts);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':phone', $phone);
        $stmt->bindParam(':message', $message);
        $stmt->bindParam(':dates', $dates);
        $stmt->execute();
    if ($error==false) {
        # code...
        $data['response'] = "success";
        $data['content'] = "Thank you! your message has been sent successfully";
    }
    else{
        $data['response'] = "error";
        $data['content'] = "Your message not has been sent. Please complete all required fields";
    }

    echo json_encode($data); // will encode the data and echo the JSON array
?>