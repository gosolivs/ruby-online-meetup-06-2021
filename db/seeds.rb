main_category = Category.create!(title: 'Про Rails',
                                description: 'Фреймворк, написанный на Ruby')

Post.create!(title: 'Переписываем проект с Rails на Django',
             author: 'Гарри Поттер',
             image: 'django',
             category_id: main_category.id)

Post.create!(title: 'Выбрасываем из Rails лишнее',
             content: 'В статье мы рассмотрим, как отпелить ненужные зависимости, например ActionMailer',
             author: 'Воландеморт',
             image: 'rails',
             category_id: main_category.id)

Category.create!(title: 'Про Django', description: 'Фреймворк для веб-приложений на Python')
