| Trigger Type | OLD Available? | NEW Available? |
| ------------ | -------------- | -------------- |
| INSERT       | ❌ No           | ✅ Yes          |
| UPDATE       | ✅ Yes          | ✅ Yes          |
| DELETE       | ✅ Yes          | ❌ No           |



Key Difference Between BEFORE and AFTER
| BEFORE                       | AFTER                     |
| ---------------------------- | ------------------------- |
| Runs before actual operation | Runs after operation      |
| Can modify `NEW` values      | Cannot modify `NEW`       |
| Used for validation/changes  | Used for logging/auditing |


DROP TRIGGER trigger_name;

SHOW TRIGGERS;

--we cannot update a trigger in mySQL, we need to delete the existing trigger then we can create new one--


| Trigger                   | Procedure               |
| ------------------------- | ----------------------- |
| Runs automatically        | Called manually         |
| Linked to table events    | Independent             |
| Cannot be directly called | Uses CALL               |
| Used for automation       | Used for reusable logic |
