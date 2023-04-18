-- Try it yourself 
Create Table animal_types (
	animal_types_id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	common_name text NOT NULL,
	scientific_name text NOT NULL,
	conversation_status text NOT NULL,
	CONSTRAINT common_name_unique UNIQUE (common_name) -- rang buoc
);


-- Way 2
Create table menagerie (
	menagerie_id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
   common_name text REFERENCES animal_types (common_name),
   date_acquired date NOT NULL,
   gender text,
   acquired_from text,
   name text,
   notes text
)