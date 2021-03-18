CREATE TABLE hibernate_sequence
    (
        id SERIAL PRIMARY KEY
    );
	
CREATE TABLE bike
    (
        id BIGINT DEFAULT nextval('hibernate_sequence_id_seq'),
        contact BOOLEAN NOT NULL,
        email VARCHAR,
        model VARCHAR,
        name VARCHAR,
        phone VARCHAR,
        purchase_date timestamp,
        purchase_price NUMERIC,
        serial_number VARCHAR,
        PRIMARY KEY (id)
    );



INSERT INTO bike (contact, email, model, name, phone, purchase_date, purchase_price)
 VALUES (1::boolean, 'jeff@bikes.com', 'Globo MTB 29 Full Suspension', 'Jeff Miller', '328-443-5555', TO_TIMESTAMP(441961920000) , '1100');
INSERT INTO bike (contact, email, model, name, phone, purchase_date, purchase_price)
  VALUES (0::boolean, 'samantha@bikes.com', 'Globo Carbon Fiber Race Series', 'Samantha Davis', '448-397-5555', TO_TIMESTAMP(4419619200000), '1999');
INSERT INTO bike (contact, email, model, name, phone, purchase_date, purchase_price)
  VALUES (1::boolean, 'dave@bikes.com', 'Globo Time Trial Blade', 'Dave Warren', '563-891-5555', TO_TIMESTAMP(4419619200000), '2100');

INSERT INTO hibernate_sequence (id) VALUES (4);