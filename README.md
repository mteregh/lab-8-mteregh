# README

## Authentication

This application now requires authentication and is no longer fully open to anonymous users.

Visitors who are not signed in can only access the public home page. All VetClinic resources (owners, pets, vets, appointments, and treatments) require a signed-in user.

---

## Seeded User Credentials

After running:

```bash
bin/rails db:drop db:create db:migrate db:seed

## Sign in
you can sign in with the following users:

Role	Email	Password
Admin	admin@vetclinic.com
	password123
Vet	vet@vetclinic.com
	password123
Owner	owner@vetclinic.com
	password123
