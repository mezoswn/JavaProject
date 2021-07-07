# PETPET
Done by (Moath Sweidan, Anas Tumaizeh & Alaa Mansour)
Axsos Academy
Palestine

•	About:
Our project main idea is to create a website for rescuing animals from cruelty and neglect an (specially dogs & cats). The visitor to our website will have the ability to report for suffering/homeless animal, also he can subscribe as a volunteer/supporter so he can contribute with shelter or medical care or any information about feeding, medication, etc. The website also has a gallery of available homeless animals which offered for adoption or required special attention or support. We will be considered as a non-profit organization.

The project called PET-PET, which basically contains from 8 + 1(admin) pages (Home Page, Login & registration for the user, Pet addition (we will make it for the admin only), the admin page), user information, services, Pets available, Pet information & details, and contact us page. 
<img width="112" alt="PetPet" src="https://user-images.githubusercontent.com/81511441/124693962-07878400-dee9-11eb-9dd3-98eb1a5bb7ac.png">

The routes and the pages functions for the described project will be as bellow: 

![home](https://user-images.githubusercontent.com/81511441/124695963-db6e0200-deec-11eb-9813-2e571dade6f8.gif)


•	Home Page (PetPet): 
This is the first page will appear to our site visitors, which will contain three parts:
1-	The navbar: contains our logo, name, about us description & registration / log in.
2-	Text field with the welcome letter.
3-	The footer: contains the contact details and other useful links such as FAQ.

•	Login & Registration (PetPet/Login or Register): 
This page will enable us for login to the user account if he is already registered in the site before or to register if he is new user. It will contain filling for some of the personal information for the user such as first & last name, email & address.

•	Welcome (PetPet/user/id)):
This page to preview the user information and to show all the functionality as a user, such as pick a pet, or donate to our organization & our services.

•	The Admin Page (Pet addition) (PetPet/Admin): 
This is the admin page, which will allow us to add the pets which will be offered to the users and update the status for each pet or delete the pet.

•	The Admin Page (for action) (PetPet/Admin/add_Pet): 
This page allows the admin to review, edit & delete the Pet.

•	Services (PetPet/user/id/services):
The user will go through this page to discover his option in our website, he can pick a pet for adoption, he can also support us by volunteering, donating, etc. or he could as for our help and support or consultation in pets caring.

•	Pet View (PetPet/user/id/pets):
The user will be directed to this page which allows him to view all the available pets so he can choose one of them.

•	 Pet info (PetPet/user/id/pets/pet_id):
The user will get all the available information about the chosen pet and allow the user to support and help this pet to have the proper care and shelter.

•	Contact us Page (PetPet/contactus):
Through this page we can as PetPet to contact and reach the user, so we can collect the pet or to give any kind of support to the user and his pet.

The Project Requirements:

1-	Home Page (localhost/8080):

o	This page is responsive.
o	Includes NavBar:
	Logo: no action.
	 About Us: drop down text.
	 Login: link which route for login page. (localhost/login)
	Register: link which route for register page. (localhost/register)
o	Welcome text & summary. (Paragraph introduction will be about the project and the mechanism for pets’ service and information).
o	Footer contains (contacts). (Link to route us for the social account of the company (not active))

2-	Login Page: (localhost/login)

o	This page is responsive.
o	Validation for email to make sure the user is registered.
o	Validation for password as correct password.

3-	Admin Page: (localhost/admin)

o	This page displays an API for the available animals and status for adoption & medical care status.
o	This page will notify the admin about any contact request will be submitted through the user.
o	The admin could add the pet to the website and give all the related information and upload the images through the post button.
o	The admin can edit the pet information or status through the edit button.
o	The admin can delete the pet from the website after adoption.

4-	Admin Page Action: (localhost/admin/ add_Pet)

o	This page will display text field (as title for pet).
o	Text fields have the pet description & detail (name, date, health status, etc).
o	Three buttons as POST, Edit & Delete.
o	The admin could add the pet to the website and give all the related information and upload the images through the post button.
o	The admin can edit the pet information or status through the edit button, then he will be routed to the pet info page. Pet info (PetPet/admin/id/pets/pet_id).
o	The admin can delete the pet from the website after adoption.
o	Back button to return to the admin page. (localhost/admin).

5-	Register Page (user): (localhost/Register)

o	This page basic register page contains text field for first name which must have only letters without number or special characters and should be at least 3 characters.
o	text field for last name which must have only letter without number or special characters and should be at least 3 characters.
o	Email field: must be regex and unique.
o	Password field: hashed & encrypted and at least 8 characters.
o	Confirm password field: match the password field.
o	Register button: for registration and will redirect the user to the welcome page (loclahost/user/id)).
o	Home link to redirect the user to the home page (localhost/home).
o	Login link to redirect the user to the login page if the user already registered (localhost/login)

6-	Welcome Page (user): (PetPet/user/id)

o	This page will be redirected after user registration or logging in.
o	Display a button called edit info which will redirect the user to registration page (localhost/user/id/editinfo).
o	Information field have the basic information birthdate, address & email.
o	Information field have service, donate & pick pet buttons.
o	The service button will redirect the user to services page. (PetPet/user/id/services).
o	The Donate button will redirect the user to contact us page. (PetPet/contactus).
o	The pick pet button will redirect the user to pet view page. (PetPet/user/id/pets).
o	Logout button for logout and after logout will redirect to the homepage (localhost/home).

7-	 Services Page: (PetPet/user/id/services)

o	The user will be directed to this page after pressing the link (services) in user welcome page.
o	It contains three options will be offered for the user with small description about each option (Support Us, Pick Pet & Consult us).
o	Support Us will offer the user the option to support us by volunteering in our team or be one of our finance supporters or by offering to us a shelter.
o	Pick Pit will redirect the user for pet view page (PetPet/user/id/pets), so he can view and browse the available pets on our website.
o	Consult us option will offer our help and support to the use, so if the user needs our help he will be will redirect directly to contact us page (PetPet/contactus).
o	Home button: to be redirected to the home page (localhost/home).

•	Pet View Page: (PetPet/user/id/pets):

o	This page will display all the available pets images which need help with a detail button under each image.
o	The detail button will redirect the user for pet info page (PetPet/user/id/pets/pet_id).
o	Home button: to redirect the user to the homepage (localhost/home).

8-	Pet info Page: (PetPet/user/id/pets/pet_id):

o	This page will be redirected after the user press the detail button in pet view page (PetPet/user/id/pets).
o	This page contains pet image/images, details, and information about the pet like name, age, health history / status, and the user could pick the pet for adoption through this page.
o	Drop list button which through it the user can choose how he can support us.
o	The pick me button will allow the user to choose the pet for any kind of support as mentioned above from the drop list, and it will redirect the user for thank you page. (PetPet/Respons).

9-	Contact Us Page: (PetPet/contactus):

o	This page will be redirected when the user needs support, consult and when he picked the desired pet.
o	This page contains the name text field which must have only letters without number or special characters and should be at least 3 characters.
o	Email field: must be regex.
o	Phone field: must be numbers only and 10 digits only.
o	Drop list choice for preferable way to call by email or phone call.
o	Text box field: must not be empty and should have minimum 10 characters.

10-	Thank You Page: (PetPet/Response):

o	This page will be displaying a thank you letter and that we will contact the user soon.
o	Home button to redirect the user to the home page (localhost/home).
o	Log out button to logout and redirect the user to the home page (localhost/home).
o	Back button to return the user to the pet info page (PetPet/user/id/pets/pet_id).

![wireframe](https://user-images.githubusercontent.com/81511441/124693984-153d0980-dee9-11eb-8a14-c5a5ea1f8b8e.png)

<img width="710" alt="erd" src="https://user-images.githubusercontent.com/81511441/124694114-50d7d380-dee9-11eb-9a86-0dbfebc8f4da.png">

