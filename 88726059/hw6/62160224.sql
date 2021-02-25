    CREATE TABLE Artist (
        Artistname VARCHAR(100) PRIMARY KEY,
        membership VARCHAR(100) NOT NULL
        );

    CREATE TABLE Style(
        Style_name VARCHAR(100)  PRIMARY KEY
        );
    
    CREATE TABLE Music(
        Name_song VARCHAR(150) PRIMARY KEY,
        Album_Name VARCHAR(100) NULL,
        Song_length VARCHAR(45) NOT NULL,
        Lyrics VARCHAR(500) NOT NULL
        );

    CREATE TABLE Album(
        Album_name VARCHAR(100)  PRIMARY KEY,
        Release_ VARCHAR(50) NOT NULL,
        Photo_album VARCHAR(150) NOT NULL
        );

    INSERT INTO Artist (Artistname,membership)
    VALUES  ('ปั๊ป/Potato','4'),
            ('ปั๊ป/Potato','4'),
            ('ปั๊ป/Potato','4'),
            ('ปั๊ป/Potato','4'),
            ('ปั๊ป/Potato','4')
            ;

    INSERT INTO Style (style_name)
    VALUES  ('Pop/Rock'),
            ('Pop/Rock'),
            ('Pop/Rock'),
            ('Pop/Rock'),
            ('Pop/Rock')
           ;
    
    INSERT INTO Music (Name_song,Album_name,Song_length,Lyrics)
    VALUES ('ไม่ให้เธอไป','Go..On','4.07','https://musicstation.kapook.com/%E0%B9%84%E0%B8%A1%E0%B9%88%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B9%80%E0%B8%98%E0%B8%AD%E0%B9%84%E0%B8%9B.html'),
        ('รักแท้ ดูแลไม่ได้','Life','5.05','https://musicstation.kapook.com/%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B9%81%E0%B8%97%E0%B9%89%E0%B8%94%E0%B8%B9%E0%B9%81%E0%B8%A5%E0%B9%84%E0%B8%A1%E0%B9%88%E0%B9%84%E0%B8%94%E0%B9%89.html'),
        ('นี่แหละความเสียใจ','Sense','6','https://www.sanook.com/music/song/_9OyZG8NyelwNurmNcKCOg==/'),
        ('ทนพิษบาดแผลไม่ไหว','Circle. 3','5.07','https://musicstation.kapook.com/%E0%B8%97%E0%B8%99%E0%B8%9E%E0%B8%B4%E0%B8%A9%E0%B8%9A%E0%B8%B2%E0%B8%94%E0%B9%81%E0%B8%9C%E0%B8%A5%E0%B9%84%E0%B8%A1%E0%B9%88%E0%B9%84%E0%B8%AB%E0%B8%A7_Potato+(%E0%B9%82%E0%B8%9B%E0%B9%80%E0%B8%95%E0%B9%82%E0%B8%95%E0%B9%89).html'),
        ('เธอยัง','Human','6.11','https://musicstation.kapook.com/%E0%B9%80%E0%B8%98%E0%B8%AD%E0%B8%A2%E0%B8%B1%E0%B8%87_Potato.html');


    INSERT INTO Album (Album_name,Release_,Photo_album)
    VALUES ('Go..On','2546','https://www.picz.in.th/image/lUhBif'),
            ('Life','2548','https://www.picz.in.th/image/lUh3wz'),
            ('Sense','2550','https://www.picz.in.th/image/lUh9o8'),
            ('Circle','2551','https://www.picz.in.th/image/lUhTJR'),
            ('Human','2554','https://www.picz.in.th/image/lUhwh0');


