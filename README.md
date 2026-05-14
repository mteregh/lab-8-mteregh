## Authentication

This application now requires authentication and is no longer fully open to anonymous users.

Visitors who are not signed in can only access the public home page. All VetClinic resources (owners, pets, vets, appointments, and treatments) require a signed-in user.

---

## Seeded User Credentials

After running:

```bash
bin/rails db:drop db:create db:migrate db:seed
```

you can sign in with the following users:

| Role | Email | Password |
|---|---|---|
| Admin | admin@vetclinic.com | password123 |
| Vet | vet@vetclinic.com | password123 |
| Owner | owner@vetclinic.com | password123 |

---

## Devise Customization

The Devise authentication flow was customized in the following ways:

- Added `first_name` and `last_name` fields to the User model.
- Added a `role` enum with the values:
  - `owner`
  - `vet`
  - `admin`
- Configured strong parameters so `first_name` and `last_name` can be updated through Devise forms.
- The `role` field is intentionally not editable from any user-facing form.
- Added Bootstrap styling to the Devise sign-in, sign-up, and edit-account forms.
- Added authentication-aware navbar behavior:
  - signed-out users see **Sign in / Sign up**
  - signed-in users see their full name and a **Sign out** button
