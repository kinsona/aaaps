# LadyProblems Hackathon, Boston 2016

# AJAX methods

## To create a user
POST to aaaps.herokuapp.com/users.json
Include `device_id=` in the body of the POST request

## To get a user's data by device_id
GET request to aaaps.herokuapp.com/users/[device_id]

## To log a user viewing a piece of content
POST to aaaps.herokuapp.com/content_views.json
Include `device_id=` and `content_url=` in the body of the POST request

## To create a new order to ship
POST to aaaps.herokuapp.com/orders.json
Include these fields in the body:
* device_id
* recipient_name
* address_line_1
* address_line_2
* city
* state_abbreviation (must be 2 letters)
* zip_code (must be 5 digits)

## To request and log a product recommendation
POST to aaaps.herokuapp.com/product_recommendations.json
The body of the request should look like this:
```
{
  device_id: "1234567",
  product_recommendation_responses_attributes: [
    { question_text: "Can I ask you a question?", response_text: "Yes, you can!" },
    { question_text: "What about a follow-up question?", response_text: "That's too much." }
  ]
}
```