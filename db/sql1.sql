INSERT into articles (title, body, created_at, updated_at) 
VALUES ('zzzz123asd', 'zzzzasdfg5656', '202110031913', '202110031914');

UPDATE articles 
SET created_at = '2021-10-03 19:19:19.948185', 
updated_at = '2021-10-03 19:19:24.313080' 
WHERE (id >= 3);

UPDATE articles 
SET 
title = 'Now we know how tabby cats get their stripes', 
body = 'A close look at feline embryos reveals the surprising start to this distinctive pattern on domestic cats.'
WHERE id = 2;

UPDATE articles 
SET 
title = 'These animals offer key clues for environmental change',
body = 'Indicator species are often the first to be affected by change in an ecosystem. Studying these sensitive animals helps scientists detect the effects of climate change and pollution early.'
WHERE id = 4;

UPDATE articles 
SET 
title = 'China declares pandas no longer endangered—but threats persist',
body = 'Competition with native wildlife could deter efforts to boost populations of the famous black-and-white bear in its native habitat.'
WHERE id = 6;