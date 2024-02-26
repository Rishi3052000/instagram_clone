json.array! @posts, partial: "posts/post", as: :post
<% @posts.each do |post| %>
    <%= render "posts/myposts" %>
<% end %>