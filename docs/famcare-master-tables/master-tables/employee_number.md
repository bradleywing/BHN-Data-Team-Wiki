--- 
front-matter-title: employee_number Master Table
author: Bradley Wing
last_updated: 2026-01-04
status: active
program_scope: none
programs:
  - none
tags:
  - sql-choice-table
  - master-table
  - lookup-metadata
permalink: /famcare-master-tables/employee-number/
layout: home
nav_order: 1
parent: FAMCare Master Tables 
reviewed-by: 
  - name: Bradley Wing 
  - date: 2026-01-04
last_reviewed: 2026-01-04
schema_version: 1.0
---

# employee_number Master Table

|employee_number |date_added |status   |supervisor |last_name     |first_name  |middle_initial |name_suffix |employee_name          |user_id              |Column1                  |program                 |Column2 |
|:---------------|:----------|:--------|:----------|:-------------|:-----------|:--------------|:-----------|:----------------------|:--------------------|:------------------------|:-----------------------|:-------|
|000001          |2024-07-16 |Active   |NA         |Wing          |Bradley     |W              |NA          |Wing, Bradley          |bradley-wing         |NA                       |NA                      |NA      |
|000002          |2024-07-16 |Active   |NA         |Orson         |Wendy       |NA             |NA          |Orson , Wendy          |wendy-orson          |NA                       |NA                      |NA      |
|000003          |2024-07-16 |Inactive |NA         |Gebhart       |Elizabeth   |NA             |NA          |Gebhart, Elizabeth     |elizabeth-gebhart    |NA                       |NA                      |NA      |
|000005          |2024-07-17 |Active   |000001     |Lee           |Laura       |NA             |NA          |Lee, Laura             |Laura-Lee            |NA                       |NA                      |NA      |
|000006          |2024-07-17 |Active   |000001     |Dairaghi      |Kayla       |NA             |NA          |Dairaghi, Kayla        |Kayla-Dairaghi       |NA                       |NA                      |NA      |
|000007          |2024-07-17 |Active   |000001     |Weigel        |Kathryn     |NA             |NA          |Weigel, Kathryn        |Kathryn-Weigel       |NA                       |NA                      |NA      |
|000008          |2024-07-17 |Active   |000038     |Hotard        |Christopher |NA             |NA          |Hotard, Christopher    |Christopher-Hotard   |Program Manager/Director |Complex Care, ERE       |NA      |
|000035          |2024-11-26 |Active   |NA         |Miller        |Jennifer    |NA             |NA          |Miller, Jennifer       |Jennifer-Miller      |Program Manager/Director |EPICC                   |NA      |
|000036          |2024-11-26 |Active   |000038     |Schafer       |Theresa     |NA             |NA          |Schafer, Theresa       |Theresa-Schafer      |Program Manager/Director |YERE                    |NA      |
|000037          |2024-11-26 |Active   |000037     |Collins       |Carla       |NA             |NA          |Collins, Carla         |Carla-Collins        |Program Manager/Director |EPICC                   |NA      |
|000038          |2024-11-26 |Active   |NA         |Silverblatt   |Dana        |NA             |NA          |Silverblatt, Dana      |Dana-Silverblatt     |Program Manager/Director |Complex Care, ERE, YERE |NA      |
|000039          |2024-11-26 |Inactive |NA         |Singer        |John        |NA             |NA          |Singer, John           |John-Singer          |NA                       |NA                      |NA      |
|000040          |2024-11-26 |Active   |NA         |Wright        |Tamela      |NA             |NA          |Wright, Tamela         |Tamela-Wright        |Program Manager/Director |BCR                     |NA      |
|000041          |2024-11-26 |Active   |000040     |Hill          |Tanisha     |NA             |NA          |Hill, Tanisha          |Tanisha-Hill         |Program Manager/Director |BCR                     |NA      |
|000042          |2024-11-26 |Active   |000036     |Hazel         |Brittany    |NA             |NA          |Hazel, Brittany        |Brittany-Hazel       |Program Manager/Director |YERE                    |ALPHA   |
|000043          |2024-12-03 |Active   |000116     |Murray        |Kathleen    |NA             |NA          |Murray, Kathleen       |Kathleen-Murray      |Program Manager/Director |Complex Care, ERE       |NA      |
|000044          |2024-12-04 |Active   |000043     |Nicholson     |Britanie    |NA             |NA          |Nicholson, Britanie    |Britanie-Nicholson   |Program Manager/Director |ERE                     |NA      |
|000045          |2024-12-04 |Active   |000035     |James         |Gabby       |NA             |NA          |James, Gabby           |Gabby-James          |Program Manager/Director |EPICC                   |NA      |
|000046          |2024-12-09 |Active   |000040     |Bogan         |Yolanda     |NA             |NA          |Bogan, Yolanda         |Yolanda-Bogan        |Social Worker            |BCR                     |ALPHA   |
|000047          |2024-12-09 |Active   |000040     |Hawkins       |Jackie      |NA             |NA          |Hawkins, Jackie        |Jackie-Hawkins       |Social Worker            |BCR                     |ALPHA   |
|000048          |2024-12-09 |Active   |000040     |Lintner       |Phoenix     |NA             |NA          |Lintner, Phoenix       |Phoenix-Lintner      |Social Worker            |BCR                     |ALPHA   |
|000049          |2024-12-09 |Active   |000040     |Washington    |Jessica     |NA             |NA          |Washington, Jessica    |Jessica-Washington   |Social Worker            |BCR                     |ALPHA   |
|000050          |2024-12-09 |Inactive |000036     |Almalki       |Esraa       |NA             |NA          |Almalki, Esraa         |Esraa-Almalki        |Social Worker            |YERE                    |ALPHA   |
|000051          |2024-12-09 |Active   |000036     |Butler        |Venita      |NA             |NA          |Butler, Venita         |Venita-Butler        |Social Worker            |YERE                    |ALPHA   |
|000052          |2024-12-09 |Inactive |000036     |Jackson       |Ryleigh     |NA             |NA          |Jackson, Ryleigh       |Ryleigh-Jackson      |Social Worker            |YERE                    |ALPHA   |
|000053          |2024-12-09 |Active   |000036     |Johnson       |Duane       |NA             |NA          |Johnson, Duane         |Duane-Johnson        |Social Worker            |YERE                    |ALPHA   |
|000054          |2024-12-09 |Active   |000036     |Liggins       |Bria        |NA             |NA          |Liggins, Bria          |Bria-Liggins         |Social Worker            |YERE                    |ALPHA   |
|000055          |2024-12-09 |Inactive |000036     |Prendergast   |Katie       |NA             |NA          |Prendergast, Katie     |Katie-Prendergast    |Social Worker            |YERE                    |ALPHA   |
|000056          |2024-12-09 |Active   |000036     |Pullen        |Micah       |NA             |NA          |Pullen, Micah          |Micah-Pullen         |Social Worker            |YERE                    |ALPHA   |
|000057          |2024-12-09 |Inactive |000036     |Roach         |Sarah       |NA             |NA          |Roach, Sarah           |Sarah-Roach          |Social Worker            |YERE                    |ALPHA   |
|000058          |2024-12-09 |Inactive |000036     |Waggoner      |Suzanne     |NA             |NA          |Waggoner, Suzanne      |Suzanne-Waggoner     |Social Worker            |YERE                    |ALPHA   |
|000059          |2024-12-09 |Active   |000036     |Williams      |Johnisha    |NA             |NA          |Williams, Johnisha     |Johnisha-Williams    |Social Worker            |YERE                    |ALPHA   |
|000060          |2024-12-10 |Inactive |000036     |Hanock        |Tami        |NA             |NA          |Hanock, Tami           |Tami-Hanock          |Social Worker            |YERE                    |NA      |
|000061          |2024-12-16 |Inactive |000043     |Koehler       |Liz         |NA             |NA          |Koehler, Liz           |Liz-Koehler          |Social Worker            |LINCS NAV               |NA      |
|000062          |2024-12-16 |Inactive |000008     |Bonds-Brown   |Shantelya   |NA             |NA          |Bonds-Brown, Shantelya |Shantelya-BondsBrown |NA                       |NA                      |NA      |
|000063          |2024-12-16 |Inactive |000043     |Gendron       |Gary        |NA             |NA          |Gendron, Gary          |Gary-Gendron         |Social Worker            |LINCS NAV               |ALPHA   |
|000064          |2024-12-16 |Inactive |000043     |Ilardi        |David       |NA             |NA          |Ilardi, David          |David-Ilardi         |Social Worker            |LINCS NAV               |ALPHA   |
|000065          |2024-12-16 |Inactive |000008     |Paquette      |Taylor      |NA             |NA          |Paquette, Taylor       |Taylor-Paquette      |NA                       |NA                      |NA      |
|000066          |2024-12-17 |Inactive |000043     |Howard        |Catherine   |NA             |NA          |Howard, Catherine      |Catherine-Howard     |Social Worker            |ERE/Complex Care        |NA      |
|000068          |2024-12-17 |Active   |000106     |Ayres         |Tristen     |NA             |NA          |Ayres, Tristen         |Tristen-Ayres        |Social Worker            |ERE                     |ALPHA   |
|000069          |2024-12-31 |Inactive |000040     |Woodcock      |Brinique    |NA             |NA          |Woodcock, Brinique     |Brinique-Woodcock    |NA                       |NA                      |NA      |
|000070          |2024-12-31 |Inactive |000040     |Johnson       |Shalese     |NA             |NA          |Johnson, Shalese       |Shalese-Johnson      |NA                       |NA                      |NA      |
|000071          |2024-12-31 |Active   |000037     |Braasch       |Angie       |NA             |NA          |Braasch, Angie         |Angie-Braasch        |Social Worker            |EPICC                   |ALPHA   |
|000072          |2024-12-31 |Inactive |000037     |Esposito      |Austin      |NA             |NA          |Esposito, Austin       |Austin-Esposito      |NA                       |NA                      |NA      |
|000073          |2024-12-31 |Inactive |000037     |Maurer        |Megan       |NA             |NA          |Maurer, Megan          |Megan-Maurer         |NA                       |NA                      |NA      |
|000074          |2024-12-31 |Inactive |000037     |Winn          |Pamela      |NA             |NA          |Winn, Pamela           |Pamela-Winn          |NA                       |NA                      |NA      |
|000075          |2024-12-31 |Inactive |000037     |Terbrock      |Sydney      |NA             |NA          |Terbrock, Sydney       |Sydney-Terbrock      |NA                       |NA                      |NA      |
|000076          |2024-12-31 |Inactive |000037     |Marvel        |Will        |NA             |NA          |Marvel, Will           |Will-Marvel          |NA                       |NA                      |NA      |
|000077          |2024-12-31 |Inactive |000037     |Kayar         |Angie       |NA             |NA          |Kayar, Angie           |Angie-Kayar          |Social Worker            |EPICC                   |ALPHA   |
|000078          |2024-12-31 |Active   |000037     |Gallo         |Jeff        |NA             |NA          |Gallo, Jeff            |Jeff-Gallo           |Social Worker            |EPICC                   |ALPHA   |
|000079          |2024-12-31 |Inactive |000037     |Janke         |Heather     |NA             |NA          |Janke, Heather         |Heather-Janke        |Social Worker            |EPICC                   |ALPHA   |
|000080          |2024-12-31 |Inactive |000037     |Marbley       |Joy         |NA             |NA          |Marbley, Joy           |Joy-Marbley          |Social Worker            |EPICC                   |ALPHA   |
|000081          |2024-12-31 |Active   |000037     |Westmoreland  |Kinsey      |NA             |NA          |Westmoreland, Kinsey   |Kinsey-Westmoreland  |Social Worker            |EPICC                   |ALPHA   |
|000082          |2024-12-31 |Inactive |000037     |Janke         |Mandy       |NA             |NA          |Janke, Mandy           |Mandy-Janke          |Social Worker            |EPICC                   |ALPHA   |
|000083          |2024-12-31 |Active   |000037     |Crooks        |Marianne    |NA             |NA          |Crooks, Marianne       |Marianne-Crooks      |Social Worker            |EPICC                   |ALPHA   |
|000084          |2024-12-31 |Active   |000037     |Mantro        |Matt        |NA             |NA          |Mantro, Matt           |Matt-Mantro          |Social Worker            |EPICC                   |ALPHA   |
|000085          |2024-12-31 |Inactive |000037     |Minney        |Allison     |NA             |NA          |Minney, Allison        |Allison-Minney       |NA                       |NA                      |NA      |
|000086          |2024-12-31 |Inactive |000008     |Brown         |Keisha      |NA             |NA          |Brown, Keisha          |Keisha-Brown         |NA                       |NA                      |NA      |
|000087          |2024-12-31 |Inactive |000008     |Wyss          |Carly       |NA             |NA          |Wyss, Carly            |Carly-Wyss           |NA                       |NA                      |NA      |
|000088          |2024-12-31 |Inactive |000036     |Dimitriou     |Holly       |NA             |NA          |Dimitriou, Holly       |Holly-Dimitriou      |NA                       |NA                      |ALPHA   |
|000089          |2024-12-31 |Inactive |000036     |Ruckman       |Jennifer    |NA             |NA          |Ruckman, Jennifer      |Jennifer-Ruckman     |NA                       |NA                      |ALPHA   |
|000090          |2024-12-31 |Inactive |000036     |LeClaire      |Tanae       |NA             |NA          |LeClaire, Tanae        |Tanae-LeClaire       |NA                       |NA                      |ALPHA   |
|000091          |2025-01-02 |Active   |000037     |Price         |Ashley      |NA             |NA          |Price, Ashley          |Ashley-Price         |Social Worker            |EPICC                   |ALPHA   |
|000092          |2025-01-24 |Inactive |000037     |Kaucher       |Laura       |NA             |NA          |Kaucher, Laura         |Laura-Kaucher        |Social Worker            |EPICC                   |ALPHA   |
|000093          |2025-01-24 |Active   |000036     |LaMora        |Thomas      |NA             |NA          |LaMora, Thomas         |Thomas-LaMora        |Social Worker            |YERE                    |ALPHA   |
|000094          |2025-01-27 |Active   |000036     |Akakpo        |Herve       |NA             |NA          |Akakpo, Herve          |Herve-Akakpo         |Social Worker            |YERE                    |ALPHA   |
|000095          |2025-01-27 |Active   |000037     |Singer        |Nick        |NA             |NA          |Singer, Nick           |Nick-Singer          |Social Worker            |EPICC                   |ALPHA   |
|000097          |2025-02-19 |Active   |000037     |Gold          |Kevin       |NA             |NA          |Gold, Kevin            |Kevin-Gold           |Social Worker            |EPICC                   |ALPHA   |
|000098          |2025-02-28 |Active   |000036     |Smith         |Patty       |NA             |NA          |Smith, Patty           |Patty-Smith          |Social Worker            |YERE                    |ALPHA   |
|000102          |2025-03-25 |Inactive |000037     |Reeves        |Jenna       |NA             |NA          |Reeves, Jenna          |Jenna-Reeves         |Social Worker            |EPICC                   |ALPHA   |
|000103          |2025-03-26 |Inactive |000037     |Moss          |Fush        |NA             |NA          |Moss, Fush             |Fush-Moss            |Social Worker            |EPICC                   |ALPHA   |
|000104          |2025-03-31 |Active   |000037     |Woodson       |Jeff        |NA             |NA          |Woodson, Jeff          |Jeff-Woodson         |Program Manager/Director |EPICC                   |ALPHA   |
|000105          |2025-04-01 |Active   |000043     |Hopgood       |Beverly     |NA             |NA          |Hopgood, Beverly       |Beverly-Hopgood      |Program Manager/Director |ERE                     |NA      |
|000106          |2025-04-01 |Active   |000043     |Sanders       |Leah        |NA             |NA          |Sanders, Leah          |Leah-Sanders         |Program Manager/Director |ERE                     |NA      |
|000107          |2025-04-01 |Active   |000043     |Shamija       |Violanta    |NA             |NA          |Shamija, Violanta      |Violanta-Shamija     |Social Worker            |ERE                     |ALPHA   |
|000108          |2025-04-01 |Inactive |000043     |Norris        |Amtoni      |NA             |NA          |Norris, Amtoni         |Amtoni-Norris        |Program Manager/Director |ERE                     |NA      |
|000109          |2025-04-01 |Active   |000037     |Tucker        |Sabrina     |NA             |NA          |Tucker, Sabrina        |Sabrina-Tucker       |Social Worker            |EPICC                   |ALPHA   |
|000110          |2025-04-16 |Active   |000037     |Crumpler      |Peter       |NA             |NA          |Crumpler, Peter        |Peter-Crumpler       |Social Worker            |EPICC/CES/ReEngage      |ALPHA   |
|000111          |2025-05-05 |Inactive |000036     |Buckley       |Olivia      |NA             |NA          |Buckley, Olivia        |Olivia-Buckley       |Social Worker            |YERE                    |ALPHA   |
|000113          |2025-05-14 |Active   |000001     |Hayes-Lindsay |Makayla     |NA             |NA          |Hayes-Lindsay, Makayla |Makayla-HayesLindsay |NA                       |NA                      |ALPHA   |
|000114          |2025-06-12 |Active   |000037     |Christian     |Lisa        |NA             |NA          |Christian, Lisa        |Lisa-Christian       |Social Worker            |EPICC                   |ALPHA   |
|000115          |2025-06-12 |Active   |000037     |Haldeman      |Benjamin    |NA             |NA          |Halderman, Benjamin    |Benjamin-Halderman   |Social Worker            |EPICC                   |ALPHA   |
|000116          |2025-06-24 |Active   |000043     |Ladley        |Amy         |NA             |NA          |Ladley, Amy            |Amy-Ladley           |Program Manager/Director |ERE, YERE               |NA      |
|000117          |2025-06-24 |Active   |000126     |Vannoy        |Angie       |NA             |NA          |Vannoy, Angie          |Angie-Vannoy         |Social Worker            |ERE                     |ALPHA   |
|000119          |2025-06-24 |Active   |000043     |Cogshell      |Charles     |NA             |NA          |Cogshell, Charles      |Charles-Cogshell     |Social Worker            |ERE                     |ALPHA   |
|000120          |2025-06-24 |Active   |000043     |Mitchell      |Cory        |NA             |NA          |Mitchell, Cory         |Cory-Mitchell        |Social Worker            |ERE                     |ALPHA   |
|000121          |2025-06-24 |Active   |000106     |Freesmeier    |Charlie     |NA             |NA          |Freesmeier, Charlie    |Charlie Freesmeier   |Social Worker            |ERE                     |ALPHA   |
|000122          |2025-06-24 |Active   |000128     |Thornton      |Karen       |NA             |NA          |Thornton, Karen        |Karen-Thornton       |Social Worker            |ERE                     |ALPHA   |
|000123          |2025-06-24 |Active   |000043     |Curiel        |Stasia      |NA             |NA          |Curiel, Stasia         |Stasia-Curiel        |Social Worker            |ERE                     |ALPHA   |
|000124          |2025-06-24 |Active   |000043     |Jefferson     |Stacy       |NA             |NA          |Jefferson, Stacy       |Stacy-Jefferson      |Social Worker            |ERE                     |ALPHA   |
|000125          |2025-06-24 |Active   |000043     |Kelly         |August      |NA             |NA          |Kelly, August          |August-Kelly         |Social Worker            |ERE                     |ALPHA   |
|000126          |2025-06-26 |Active   |000043     |Boyer         |Jess        |NA             |NA          |Boyer, Jess            |Jess-Boyer           |Program Manager/Director |ERE                     |ALPHA   |
|000127          |2025-06-26 |Active   |000126     |Bolstad       |Drew        |NA             |NA          |Bolstad, Drew          |Drew-Bolstad         |Social Worker            |ERE                     |ALPHA   |
|000128          |2025-07-03 |Active   |000043     |Cook          |Amanda      |NA             |NA          |Cook, Amanda           |Amanda-Cook          |Program Manager/Director |ERE                     |ALPHA   |
|000129          |2025-07-16 |Active   |000037     |Evans         |Sierra      |NA             |NA          |Evans, Sierra          |Sierra-Evans         |Social Worker            |EPICC                   |ALPHA   |
|000130          |2025-08-05 |Inactive |000040     |Dilworth      |Sophia      |NA             |NA          |Dilworth, Sophia       |Sophia-Dilworth      |Social Worker            |BCR                     |NA      |
|000131          |2025-08-05 |Active   |000040     |Ridgell       |Demaris     |NA             |NA          |Ridgell, Demaris       |Demaris-Ridgell      |Social Worker            |BCR                     |NA      |
|000134          |2025-09-04 |Active   |000037     |Kiser         |Crystal     |NA             |NA          |Kiser, Crystal         |Crystal-Kiser        |Social Worker            |EPICC                   |ALPHA   |
|000135          |2025-09-04 |Active   |000037     |Lossos        |Nissa       |NA             |NA          |Lossos, Nissa          |Nissa-Lossos         |Social Worker            |EPICC                   |ALPHA   |
|000136          |2025-10-06 |Active   |000040     |Johnson       |Myisha      |NA             |NA          |Johnson, Myisha        |Myisha-Johnson       |Social Worker            |BCR                     |ALPHA   |
|000137          |2025-10-15 |Active   |000139     |Estrada       |Christy     |NA             |NA          |Estrada, Christy       |Christy-Estrada      |Program Manager/Director |Complex Care            |ALPHA   |
|000138          |2025-10-27 |Active   |000137     |Saud          |Linti       |NA             |NA          |Straud, Linti          |Linti-Straud         |Program Manager/Director |Complex Care            |ALPHA   |
|000139          |2025-10-31 |Active   |000008     |Lender        |Emily       |NA             |NA          |Lender, Emily          |Emily-Lender         |Program Manager/Director |Complex Care            |ALPHA   |
|000140          |2025-11-05 |Active   |000037     |Buckingham    |Kandis      |NA             |NA          |Buckingham, Kandis     |Kandis-Buckingham    |Social Worker            |EPICC                   |ALPHA   |
|000141          |2025-12-02 |Active   |000036     |Tate          |LaVahn      |NA             |NA          |Tate, LaVahn           |LaVahn-Tate          |Social Worker            |YERE                    |ALPHA   |
|000142          |2025-12-08 |Active   |000139     |Hicks         |Teri        |NA             |NA          |Hicks, Teri            |Teri-Hicks           |Program Manager/Director |Complex Care            |ALPHA   |
|000143          |2025-12-15 |Active   |000037     |Sprengel      |Hannah      |NA             |NA          |Sprengel, Hannah       |Hannah-Sprengel      |Social Worker            |EPICC                   |ALPHA   |
|000144          |2025-12-18 |Active   |000043     |Sohn          |Megan       |NA             |NA          |Sohn, Megan            |Megan-Sohn           |Program Manager/Director |ERE                     |ALPHA   |

## Changelog

_No changes recorded._
