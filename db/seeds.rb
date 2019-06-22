
camPdesc = "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Velit corporis blanditiis corrupti numquam voluptate hic officia doloremque perspiciatis amet, tenetur perferendis error repudiandae aliquam veritatis vel voluptatem, expedita cupiditate repellat. Nemo quasi laborum, quae numquam omnis magnam molestiae est incidunt eum reiciendis id asperiores quod doloribus, eligendi odio porro illum repellendus et tempore. Culpa amet eaque laborum, minima

voluptate magni itaque quaerat fugiat dignissimos dolores repudiandae quibusdam placeat. Beatae impedit odio ratione vero alias excepturi, architecto in dignissimos expedita pariatur ex dolores, labore animi adipisci repellendus culpa illo minus fuga sint quae, neque accusamus. Sunt nisi eveniet animi illo, quod possimus aliquam vel debitis, minima accusantium doloremque assumenda dolorem perferendis ex molestias nostrum provident? Accusantium molestias veritatis consequatur sequi rerum expedita reprehenderit placeat! Reiciendis quidem cumque doloribus dolorem dolore quia non cupiditate aperiam aut ad itaque voluptate similique culpa consectetur error voluptas tempore delectus sapiente dolores quam nam sit, corrupti velit! 

Reprehenderit voluptas officiis hic! Doloribus obcaecati reiciendis dolorum vel voluptates voluptatum hic ad, alias reprehenderit veritatis non aliquam dolor, quis ducimus. Fugit impedit vel ipsam quisquam soluta labore, voluptatem laboriosam quis eaque veritatis, maxime molestias maiores iste quaerat quo nemo quas molestiae numquam officiis temporibus odit qui quidem! Distinctio facere beatae, temporibus sequi accusantium dignissimos 

voluptates! Ipsum voluptatum incidunt sed culpa cum saepe, explicabo, adipisci provident doloremque libero repellat in sint minus suscipit ratione veniam maxime quisquam quod illum! Quo maiores assumenda ex mollitia consequatur culpa fugiat eum maxime repellendus, ipsa at officia omnis autem, labore perspiciatis voluptatum consectetur? Maiores, quisquam? Eos illum consequatur ullam odit tempora voluptas aliquid voluptate recusandae rerum quisquam cumque, vitae, ratione soluta, ipsa omnis laborum placeat assumenda eaque eum adipisci? Numquam reiciendis perspiciatis quos excepturi, aspernatur laborum ipsam sed quam, maiores, eaque placeat repellat quibusdam veritatis! Quibusdam doloremque assumenda nobis praesentium? Amet, id itaque! Eius vel facilis ullam molestias esse. Iusto consequuntur pariatur inventore perspiciatis! Voluptas officia odit similique, nobis "


catas = ["Art", "Music", "Product", "Finance", "Tech", "Creative", "Entertainment"]

35.times do
    User.create(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name ,
        username: Faker::Superhero.name,
        password: "123",
        location: Faker::Address.state,
        bio: "some stuff",
        profession:"developer",
        age: 23,
        account_balance: 2332
        )
end

35.times do
    Campaign.create(
        creator_id:1+ Random.rand(35), 
        funding_goal:2000+ Random.rand(100000),
        amount_funded:50+ Random.rand(100000),title:Faker::Book.title,
        featured:Faker::Boolean.boolean(0.40),
        duration:30, 
        category: catas.sample,
        location: Faker::Address.state,
        description: camPdesc
        )
end

35.times do
    FavoriteList.create(
        funder_id:1+ Random.rand(35),campaign_id:1+ Random.rand(35)
        )
end

35.times do
    FundedCampaign.create(
        funder_id:1+ Random.rand(35),campaign_id:1+ Random.rand(35),
        donated_amount:50+ Random.rand(500)
        )
end

35.times do
    CampaignCollaborator.create(
        collaborator_id:1+ Random.rand(35),campaign_id:1+ Random.rand(35)
        )
end
  