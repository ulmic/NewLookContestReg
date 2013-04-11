module NewLookContestReg
  class Application < Rails::Railtie
    config.after_initialize do
      if Nomination.all.empty?
        Nomination.new(:title => "Репортаж").save
        Nomination.new(:title => "Новость").save
        Nomination.new(:title => "Статья").save
        Nomination.new(:title => "Интервью").save
        Nomination.new(:title => "Обзор").save
      end
    end
  end
end
