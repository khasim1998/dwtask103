%dw 2.0
output application/json
var updateSuccessRecords = [{
   "id" : "a02345",
   "successful": true

}]

var updatedRecords = [
    {
   "id" : "a02345",
   "Name" : "nithin",
   "unique_id__c": 456

}
,
     {
   "id" : "a02365",
   "Name" : "yeshwanth",
   "unique_id__c": 458


}]
//Here i filtered the records based on the recordid and get the expected  output
---
//(updatedRecords map() -> (if($.id == updateSuccessRecords[$$].id) $ else {})) filter($ != {})
updatedRecords filter ((record) -> record.id == updateSuccessRecords[0].id)

/*
output
[
    {
  "id" : "a02345",
   "Name" : "nithin",
   "unique_id__c": 456

    }
]
*/