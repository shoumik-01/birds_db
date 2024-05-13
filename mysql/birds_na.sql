CREATE DATABASE BIRDS_NA;
USE BIRDS_NA;
CREATE TABLE birds (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    weight VARCHAR(10) NOT NULL,
    length VARCHAR(10) NOT NULL
);

INSERT INTO birds (common_name, scientific_name, weight, length)
VALUES
('American Robin', 'Turdus migratorius', '77g', '25.5cm'),
('Northern Cardinal', 'Cardinalis cardinalis', '44.8g', '23.5cm'),
('Blue Jay', 'Cyanocitta cristata', '92.4g', '26cm'),
('Steller''s Jay', 'Cyanocitta stelleri', '120g', '32cm'),
('Mourning Dove', 'Zenaida macroura', '128g', '31cm'),
('American Crow', 'Corvus brachyrhynchos', '468g', '46.5cm'),
('European Starling', 'Sturnus vulgaris', '79.5g', '21cm'),
('Northern Mockingbird', 'Mimus polyglottos', '49g', '24.3cm'),
('Black-billed Magpie', 'Pica hudsonia', '175.8g', '52.5cm'),
('Dark-eyed Junco', 'Junco hyemalis', '24g', '15.3cm'),
('Black-capped Chickadee', 'Poecile atricapillus', '12g', '13.5cm'),
('White-breasted Nuthatch', 'Sitta carolinensis', '24g', '15.5cm'),
('Tufted Titmouse', 'Baeolophus bicolor', '21.5g', '15cm'),
('House Sparrow', 'Passer domesticus', '31.8g', '16cm'),
('House Wren', 'Troglodytes aedon', '11g', '12cm'),
('House Finch', 'Haemorhous mexicanus', '21g', '13.8cm'),
('American Goldfinch', 'Spinus tristis', '15.5g', '12.5cm'),
('Downy Woodpecker', 'Dryobates pubescens', '26.5g', '16cm'),
('Hairy Woodpecker', 'Leuconotopicus villosus', '67.5g', '22cm'),
('Red-bellied Woodpecker', 'Melanerpes carolinus', '74g', '24.8cm'),
('American kestrel', 'Falco sparverius', '120g', '26.5cm'),
('Ruby-throated hummingbird', 'Archilochus colubris', '3.6g', '8cm'),
('Carolina wren', 'Thryothorus ludovicianus', '20.5g', '13.3cm'),
('Spotted Towhee', 'Pipilo maculatus', '41g', '19cm'),
('Lesser Goldfinch', 'Spinus psaltria', '9.8g', '10.5cm'),
('Barn swallow', 'Hirundo rustica', '19g', '18cm'),
('Cliff swallow', 'Petrochelidon pyrrhonota', '25g', '13cm'),
('Tree swallow', 'Tachycineta bicolor', '21.3g', '13cm'),
('Pine siskin', 'Spinus pinus', '15g', '12.5cm'),
('Purple finch', 'Haemorhous purpureus', '23.3g', '14cm'),
('Red-winged blackbird', 'Agelaius phoeniceus', '64g', '23cm'),
('Eastern bluebird', 'Sialia sialis', '30.5g', '18.5cm'),
('Gray catbird', 'Dumetella carolinensis', '37.5g', '22.3cm'),
('Brown creeper', 'Certhia americana', '7.1g', '13cm'),
('Common yellowthroat', 'Geothlypis trichas', '8.5g', '12cm'),
('American redstart', 'Setophaga ruticilla', '8.6g', '12.5cm'),
('American woodcock', 'Scolopax minor', '185g', '27.5cm'),
('Baltimore oriole', 'Icterus galbula', '33.8g', '19.5cm'),
('Cedar waxwing', 'Bombycilla cedrorum', '30g', '16.5cm'),
('Indigo bunting', 'Passerina cyanea', '14.5g', '13.3cm'),
('Abert''s towhee', 'Melozone aberti', '47.1g', '23cm'),
('Acorn woodpecker', 'Melanerpes formicivorus', '77.5g', '21cm'),
('Allen''s hummingbird', 'Selasphorus sasin', '3g', '8.3cm'),
('American avocet', 'Recurvirostra americana', '347.5g', '45.5cm'),
('American coot', 'Fulica americana', '620g', '38.5cm'),
('American dipper', 'Cinclus mexicanus', '46g', '16.5cm'),
('American oystercatcher', 'Haematopus palliatus', '544g', '47cm'),
('Anna''s hummingbird', 'Calypte anna', '4.3g', '10.4cm'),
('Black phoebe', 'Sayornis nigricans', '18.5g', '16cm'),
('Calliope Hummingbird', 'Selasphorus calliope', '2.5g', '8.5cm'),
('Common grackle', 'Quiscalus quiscula', '108g', '31cm'),
('Common raven', 'Corvus corax', '1470g', '62.5cm'),
('Crested caracara', 'Caracara plancus', '1250g', '57.5cm'),
('Curve-billed thrasher', 'Toxostoma curvirostre', '77g', '27.5cm'),
('Dunlin', 'Calidris alpina', '62.4g', '19cm'),
('Canada Jay', 'Perisoreus canadensis', '67.5g', '29cm'),
('Gila woodpecker', 'Melanerpes uropygialis', '65.2g', '22.5cm'),
('Emerald toucanet', 'Aulacorhynchus prasinus', '195g', '33cm'),
('Eastern meadowlark', 'Sturnella magna', '113g', '23.5cm'),
('Yellow-bellied sapsucker', 'Sphyrapicus varius', '50.3g', '20cm'),
('Belted kingfisher', 'Megaceryle alcyon', '145.5g', '31.5cm'),
('Band-tailed pigeon', 'Patagioenas fasciata', '370g', '36.5cm'),
('Barred owl', 'Strix varia', '800g', '51.5cm'),
('Nashville warbler', 'Leiothlypis ruficapilla', '10g', '12cm'),
('Cerulean warbler', 'Setophaga cerulea', '9g', '11cm'),
('American golden plover', 'Pluvialis dominica', '158g', '26cm'),
('Arctic warbler', 'Phylloscopus borealis', '9.6g', '12cm'),
('Atlantic puffin', 'Fratercula arctica', '499g', '31.5cm'),
('Blue mockingbird', 'Melanotis caerulescens', '55g', '10cm'),
('Blue-winged warbler', 'Vermivora cyanoptera', '8.5g', '11.5cm'),
('Scarlet Tanager', 'Piranga olivacea', '25g', '17.5cm'),
('Western Tanager', 'Piranga ludoviciana', '25g', '17.5cm'),
('American Wigeon', 'Mareca americana', '935g', '50.5cm'),
('Painted bunting', 'Passerina ciris', '16g', '13cm'),
('Rose-breasted grosbeak', 'Pheucticus ludovicianus', '45g', '20cm');
