### Autentica Conta do Motorista [GET]

+ Request with body (application/json)

    + Body

            <!-- include(requests/worker-auth.json) -->

+ Response 200 (application/json)

    + Body

            <!-- include(responses/authenticated.json) -->

+ Response 400 (application/json)

    + Body

            <!-- include(responses/bad-request.json) -->

+ Response 403 (application/json)

    + Body

            <!-- include(responses/incorrect-email-or-password.json) -->