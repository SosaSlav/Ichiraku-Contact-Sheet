component {
	public void function create(
		required string firstName,
		required string lastName,
		required string email,
		required string phone
	){
		queryExecute("
			INSERT INTO `sample_crm`.`user` (`firstName`,`lastName`,`email`, `phone`)
			VALUES( :firstName, :lastName, :email, :phone )
		",{
			firstName 	: { cfsqltype:"varchar", value:arguments.firstName },
			lastName 	: { cfsqltype:"varchar", value:arguments.lastName },
			email 		: { cfsqltype:"varchar", value:arguments.email },
			phone 		: { cfsqltype:"varchar", value:arguments.phone }
		});
	}

	public query function read(
		numeric id
	){
		var sql = "
			SELECT 	`ID`,`firstName`,`lastName`,`email`, `phone`,`createdOn`,`updatedOn`
			FROM 	`sample_crm`.`user`
			WHERE 	`ID` IS NOT NULL
		";
		var params = {};

		if ( structKeyExists(arguments,"id") ){
			sql &= " AND `ID` = :id ";
			params.id = { cfsqltype:"integer", value:arguments.id };
		}

		return queryExecute(sql,params);
	}

	public void function update(
		required numeric id,
		required string firstName,
		required string lastName,
		required string email,
		required string phone
	){
		queryExecute("
			UPDATE 	`sample_crm`.`user`
			SET 	`firstName` = :firstName,
					`lastName` 	= :lastName,
					`email` 	= :email,
					`phone` 	= :phone,
					`updatedOn` = UTC_TIMESTAMP()
			WHERE `ID` = :id ;
		",{
			id 			: { cfsqltype:"integer", value:arguments.id },
			firstName 	: { cfsqltype:"varchar", value:arguments.firstName },
			lastName 	: { cfsqltype:"varchar", value:arguments.lastName },
			email 		: { cfsqltype:"varchar", value:arguments.email },
			phone 		: { cfsqltype:"varchar", value:arguments.phone }
		});
	}

	public void function delete(
		required numeric id
	){
		queryExecute("
			DELETE
			FROM  `sample_crm`.`user`
			WHERE `ID` = :id ;
		",{
			id : { cfsqltype:"integer", value:arguments.id }
		});
	}
}