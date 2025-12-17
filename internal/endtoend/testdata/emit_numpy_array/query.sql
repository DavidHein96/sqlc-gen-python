-- name: GetItem :one
SELECT * FROM items WHERE id = $1;


-- name: CreateItem :one
INSERT INTO items (embedding) VALUES ($1) RETURNING *;