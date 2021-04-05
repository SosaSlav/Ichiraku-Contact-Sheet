<cfscript>
	if ( !structIsEmpty(form) ){
		// update or delete
		if ( form.id != 0 ){
			// delete
			if ( form.process == "delete" ){
				request.userBean.delete(
					id : form.id
				);
			}
			// update
			else {
				request.userBean.update(
					id 			: form.id,
					firstName 	: form.firstName ,
					lastName 	: form.lastName ,
					email 		: form.email ,
					phone 		: form.phone
				);
			}
		}
		// create
		else {
			request.userBean.create(
				firstName 	: form.firstName ,
				lastName 	: form.lastName ,
				email 		: form.email ,
				phone 		: form.phone
			);
		}
		location("./",false);
	}
	else {
		location("./",false);
	}
</cfscript>