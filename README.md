# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

add_column :reviews, :date , :string
add_column :reviews, :notice, :boolean
add_column :reviews, :rentLeft , :boolean
add_column :reviews, :rentLeftAmount , :number
add_column :reviews, :late , :boolean
add_column :reviews, :lateThreeDayNum , :number
add_column :reviews, :latePaymentNum , :number
add_column :reviews, :latePaymentNum , :number
add_column :reviews, :nSF , :boolean
add_column :reviews, :nsfNum , :number
add_column :reviews, :damages , :boolean
add_column :reviews, :damagesDescription , :string
add_column :reviews, :complaintsFiled , :boolean
add_column :reviews, :complaintDescription , :string
add_column :reviews, :undocumentedHousemates , :boolean
add_column :reviews, :coTenants , :boolean
add_column :reviews, :rentalStatus , :boolean
add_column :reviews, :evicted , :boolean
add_column :reviews, :rentAgain , :boolean
add_column :reviews, :depositRefund , :boolean
add_column :reviews, :pets , :boolean
add_column :reviews, :petType , :string
add_column :reviews, :rentAmount , :number
add_column :reviews, :lease , :boolean
add_column :reviews, :tenantNotes , :string
