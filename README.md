# README

This README would normally document whatever steps are necessary to get the
application up and running.

LUCCA
reviews functionality
DONE push to heroku
STRETch search bar
separate user accounts

NICOLE
profile specific reviews
button to release reviews to landlord
button to request Reviews
STRETCH
notifications

<!-- <%= if @profile.tenant %>
<!-- <%= link_to 'Allow access to your reviews', '#' %>
<%= if @profile.landlord %>
<%= link_to 'Request a review!', '#' %> --> -->




<%= form_with(model: [@profile, @profile.reviews.build]) do |f| %>
<!-- add error box again -->
<% if @review.errors.any? %>
  <div id="error_explanation">
    <h2>
      <%= pluralize(@review.errors.count, "error") %> prohibited
      this review from being saved:
    </h2>
    <ul>
      <% @review.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
    </ul>
  </div>
<% end %>

  <p>
    <%= form.label :title %><br>
    <!-- <%= form.text_field :text %> -->
    <%= current_user.id  %>
  </p>

  <p>
    <%= form.label :tenant %><br>
    <%= form.text_field :text %>
  </p>

  <p>
    <%= form.label :date %><br>
    <%= form.date_field :date %>
  </p>

  <p>
    <%= form.label :notice %><br>
    <%= form.check_box :notice  %>
  </p>

  <p>
    <%= form.label :rentLeft %><br>
    <%= form.check_box :rentLeft  %>
  </p>

  <p>
    <%= form.label :rentLeftAmount %><br>
    <%= form.number_field :rentLeftAmount %>
  </p>

  <p>
    <%= form.label :late %><br>
    <%= form.check_box :late  %>
  </p>

  <p>
    <%= form.label :lateThreeDayNum %><br>
    <%= form.number_field :lateThreeDayNum %>
  </p>

  <p>
    <%= form.label :latePaymentNum %><br>
    <%= form.number_field :latePaymentNum %>
  </p>

  <p>
    <%= form.label :nSF %><br>
    <%= form.check_box :nSF  %>
  </p>

  <p>
    <%= form.label :nsfNum %><br>
    <%= form.number_field :nsfNum %>
  </p>

  <p>
    <%= form.label :damages %><br>
    <%= form.check_box :damages  %>
  </p>

  <p>
    <%= form.label :damagesDescription %><br>
    <%= form.text_field :damagesDescription %>
  </p>

  <p>
    <%= form.label :complaintsFiled %><br>
    <%= form.check_box :complaintsFiled  %>
  </p>

  <p>
    <%= form.label :complaintDescription %><br>
    <%= form.text_field :complaintDescription %>
  </p>

  <p>
    <%= form.label :undocumentedHousemates %><br>
    <%= form.check_box :undocumentedHousemates  %>
  </p>

  <p>
    <%= form.label :coTenants %><br>
    <%= form.check_box :coTenants  %>
  </p>

  <p>
    <%= form.label :rentalStatus %><br>
    <%= form.check_box :rentalStatus  %>
  </p>

  <p>
    <%= form.label :evicted %><br>
    <%= form.check_box :evicted  %>
  </p>

  <p>
    <%= form.label :rentAgain %><br>
    <%= form.check_box :rentAgain  %>
  </p>

  <p>
    <%= form.label :depositRefund %><br>
    <%= form.check_box :depositRefund  %>
  </p>

  <p>
    <%= form.label :pets %><br>
    <%= form.check_box :pets  %>
  </p>

  <p>
    <%= form.label :petType %><br>
    <%= form.text_field :petType %>
  </p>

  <p>
    <%= form.label :rentAmount %><br>
    <%= form.number_field :rentAmount %>
  </p>

  <p>
    <%= form.label :lease %><br>
    <%= form.check_box :lease  %>
  </p>


  <p>
    <%= form.label :tenantNotes %><br>
    <%= form.text_field :tenantNotes %>
  </p>


  <p>
    <%= form.submit %>
  </p>
<% end %>

<!-- <%= render '/reviews/form' %> -->

<% if @review.errors.any? %>
  <div id="error_explanation">
    <h2>
      <%= pluralize(@review.errors.count, "error") %> prohibited
      this review from being saved:
    </h2>
    <ul>
      <% @review.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
    </ul>
  </div>
<% end %>


<% if @profile.errors.any? %>
  <div id="error_explanation">
    <h2><%= pluralize(profile.errors.count, "error") %> prohibited this profile from being saved:</h2>

    <ul>
    <% profile.errors.full_messages.each do |message| %>
      <li><%= message %></li>
    <% end %>
    </ul>
  </div>
<% end %>
<!-- _form
<!-- <%= form_with model: @review, local: true do |form| %> -->

<% if @review.errors.any? %>
  <div id="error_explanation">
    <h2>
      <%= pluralize(@review.errors.count, "error") %> prohibited
      this review from being saved:
    </h2>
    <ul>
      <% @review.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
    </ul>
  </div>
<% end %> -->

<!-- <%= form_with(model: [@user, @user.reviews.build]) do |form|
 https://www.youtube.com/watch?v=5OTgURghwdU  -->

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
