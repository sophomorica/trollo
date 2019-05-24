3.times do 
  board = Board.create(
    board_name: Faker::Cosmere.shard,
    )
    3.times do
      list = List.create(
        list_name: Faker::Cosmere.aon,
        board_id: board.id

      )
      3.times do
        Task.create(
          task_name: Faker::Cosmere.allomancer,
          description: Faker::TvShows::RickAndMorty.quote,
          list_id: list.id
        )end
        end
      end

      puts "We created 3 boards 9 lists and 27 task"
