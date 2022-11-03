create table if not exists redstone.games
(
    id                     int                          not null,
    title                  varchar(128) charset utf8mb3 not null,
    thumbnail              varchar(64) charset utf8mb3  not null,
    short_description      varchar(512) charset utf8mb3 not null,
    game_url               varchar(64) charset utf8mb3  not null,
    genre                  varchar(32) charset utf8mb3  not null,
    platform               varchar(32) charset utf8mb3  not null,
    publisher              varchar(128) charset utf8mb3 not null,
    developer              varchar(128) charset utf8mb3 not null,
    release_date           varchar(32) charset utf8mb3  not null,
    freetogame_profile_url varchar(64) charset utf8mb3  not null,
    constraint games_pk
        unique (id)
);

create index games_developer_index
    on redstone.games (developer);

create index games_genre_index
    on redstone.games (genre);

create index games_platform_index
    on redstone.games (platform);

create index games_publisher_index
    on redstone.games (publisher);

create index games_release_date_index
    on redstone.games (release_date);

create index games_title_index
    on redstone.games (title);

