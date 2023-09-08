CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" VARCHAR(30)   NOT NULL,
    "description" VARCHAR(50)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" VARCHAR(20)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" VARCHAR(20)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);
​
CREATE TABLE "Category" (
    "category_id" VARCHAR(20)   NOT NULL,
    "category" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);
​
CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);
​
CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(20)   NOT NULL,
    "subcategory" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);
​
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");
​
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");
​
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");