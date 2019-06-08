
15.times do
    User.create(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name ,
        username: Faker::Superhero.name,
        password: "123",
        location: Faker::Address.state,
        bio: "some stuff",
        profession:"developer",
        age: 23,
        account_balance:2332
        )
end

15.times do
    Campaign.create(
        creator_id:1+ Random.rand(15), 
        funding_goal:2000+ Random.rand(100000),
        amount_funded:50+ Random.rand(100000),title:Faker::Book.title,
        featured:Faker::Boolean.boolean(0.40),
        duration:30, 
        category:"business",
        location: Faker::Address.state,
        description:"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vitae illum ab sint minus ad quidem mollitia aut magnam culpa dicta atque ipsum, libero molestiae eligendi velit aliquam voluptas aspernatur aliquid."
        )
end

15.times do
    FavoriteList.create(
        funder_id:1+ Random.rand(15),campaign_id:1+ Random.rand(15)
        )
end

15.times do
    FundedCampaign.create(
        funder_id:1+ Random.rand(15),campaign_id:1+ Random.rand(15),
        donated_amount:50+ Random.rand(500)
        )
end

15.times do
    CampaignCollaborator.create(
        collaborator_id:1+ Random.rand(15),campaign_id:1+ Random.rand(15)
        )
end
    # Article.create(
    #     user_id:1+ Random.rand(20),
    #     title:Faker::Book.title,
    #     featured:Faker::Boolean.boolean(0.40),
    #     description:"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vitae illum ab sint minus ad quidem mollitia aut magnam culpa dicta atque ipsum, libero molestiae eligendi velit aliquam voluptas aspernatur aliquid.",
    #     keyword:Faker::Book.genre,
    #     category:"business",
    #     sub_category:"stuff",
    #     article_url:Faker::LoremPixel.image("50x60") 
    # )

    # SavedArticle.create(
    #     user_id:1+ Random.rand(20),
    #     article_id:1+ Random.rand(20)
    # )
    
    # end