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
