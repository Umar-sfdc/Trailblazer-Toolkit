
# Self Lookup
Lookup with same object & also to create an
hierarchy.


- Amazon
    - Amazon.air
        - Amazon Privite airport - India
        - Amazon Privite airport - USA
        - Amazon Russian


### Question 

- why we not create with Master Detail ?
    [NO]

| Answer : If we delete top most detail then all the data is also get deleted.

---

# Hierarchy Lookup

- special field Only, 
    - User

- Standard Object 
    - Account & Parent Account.


| Note : There is huge difference between self lookup & hierarcy relation.

# External Objects in Salesforce

- External Database that can be accessed by Salesforce

- External object name will always end with `NAME__x`

- External Database that can be acessed by Salesforce 

    - Pulbic External Object
    - Secure External Data
        - ODATA 4.0 [Open Authentication]
        - ODATA 2.0 [Open Authentication]

    - External object is only access in External Objects Not in Object Manager.
    
| steps : External Data Srouce -> External Object

# External Lookup in Salesforce

- is used to related two external object.
- also used to relate any standard or custom object with external External Object.
- In case of Standard or Custom Object the external lookup field will be on Standard or Custom object only.
- Order - ORD-3501
    - Product [Laptop, tablet, pc, etc]
    - Order item [Order Product] / Detail / Child


# Indirect Lookup in Salesforce 

- is used to relate any Standard or Custom Object with External Object 

    - Parent Object / Record
- Parent Object requirement
    - Unique Field should be present
    
