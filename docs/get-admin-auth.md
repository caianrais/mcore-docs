### Autentica Conta Administrativa [GET]

+ Request with body (application/json)

    + Body

            <!-- include(requests/admin-auth.json) -->

+ Response 200 (application/json)

    + Body

            <!-- include(responses/authenticated.json) -->

+ Response 400 (application/json)

    + Body

            <!-- include(responses/invalid-request.json) -->

+ Response 403 (application/json)

    + Body

            <!-- include(responses/incorrect-email-or-password.json) -->