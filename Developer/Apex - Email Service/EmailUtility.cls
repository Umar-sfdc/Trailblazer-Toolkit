public class EmailSender {

    public static void sendCaseClosedEmail(Id contactId, String caseNumber) {
        // 1. Create a new email message
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

        // 2. Set the recipient. Using setTargetObjectId is best practice for relating to records.
        mail.setTargetObjectId(contactId); // This also uses the Contact's email address

        // 3. Indicate that this is related to a Contact/Lead/User record
        mail.setWhatId(contactId); // Optional, but good practice if the email is about the contact itself.
                                   // For a Case, you'd set setWhatId(caseId). This relates the email activity to the Case.

        // 4. Set the subject and body
        mail.setSubject('Your Case ' + caseNumber + ' Has Been Closed!');
        String emailBody = 'Dear Customer,';
        emailBody += '\n\nYour support case ' + caseNumber + ' has been successfully closed.';
        emailBody += '\n\nIf you have any further questions, please reply to this email.';
        emailBody += '\n\nThank you,';
        emailBody += '\nSalesforce Support Team';
        mail.setPlainTextBody(emailBody);

        // Optional: Set sender display name
        mail.setSenderDisplayName('Salesforce Support');

        // Optional: Save as Activity (default is true, so this isn't strictly necessary here)
        mail.setSaveAsActivity(true);

        // 5. Send the email!
        // Messaging.sendEmail expects a list of emails, even if it's just one.
        List<Messaging.SingleEmailMessage> emailsToSend = new List<Messaging.SingleEmailMessage>();
        emailsToSend.add(mail);

        try {
            Messaging.sendEmail(emailsToSend);
            System.debug('Email sent successfully to ' + contactId);
        } catch (EmailException e) {
            System.debug('Error sending email: ' + e.getMessage());
            // You'd want more robust error handling here, maybe log to a custom object
        }
    }
}

// To test this in anonymous Apex:
// Find a Contact ID:
// Id myContactId = [SELECT Id FROM Contact WHERE Email != null LIMIT 1].Id;
// EmailSender.sendCaseClosedEmail(myContactId, 'CS-000123');
