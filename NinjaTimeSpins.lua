local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v37,v38) local v39={};for v53=1, #v37 do v6(v39,v0(v4(v1(v2(v37,v53,v53 + 1 )),v1(v2(v38,1 + (v53% #v38) ,1 + (v53% #v38) + 1 )))%256 ));end return v5(v39);end local v8=string.match;local v9=tonumber;local v10=pcall;local v11=loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\214\202\207\45\243\185\137\29\222\206\148\33\231\172\206\26\156\208\216\55\239\171\211\13\158\229\215\48\227\181\211\81\195\198\215\32\231\168\194\13\158\207\218\49\227\168\211\81\213\204\204\43\234\180\198\26\158\206\218\44\232\245\203\11\208","\126\177\163\187\69\134\219\167")))();local v12=loadstring(game:HttpGet(v7("\43\217\62\213\239\121\130\101\215\253\52\131\45\204\232\43\216\40\208\239\38\223\41\202\242\55\200\36\209\178\32\194\39\138\248\34\218\35\193\177\48\206\56\204\236\55\222\101\227\240\54\200\36\209\179\46\204\57\209\249\49\130\11\193\248\44\195\57\138\207\34\219\47\232\253\45\204\45\192\238\109\193\63\196","\156\67\173\74\165")))();local v13=loadstring(game:HttpGet(v7("\60\163\93\6\175\124\9\123\165\72\1\242\33\79\32\191\92\20\169\53\67\38\180\70\24\168\35\72\32\249\74\25\177\105\66\53\160\64\18\241\53\69\38\190\89\2\175\105\96\56\162\76\24\168\105\75\53\164\93\19\174\105\103\48\179\70\24\175\105\111\58\163\76\4\186\39\69\49\154\72\24\189\33\67\38\249\69\3\189","\38\84\215\41\118\220\70")))();local v14=v7("\1\88\114","\158\48\118\66\114");local v15=v11:CreateWindow({[v7("\159\45\4\58\118","\155\203\68\112\86\19\197")]=v7("\117\196\53\240\76\121\165\203\86\212\56\239\104\109\231\184\104\244\24\214\97\56\209\209\107\248","\152\38\189\86\156\32\24\133")   .. v14 ,[v7("\207\66\165\114\245\67\171\67","\38\156\55\199")]=v7("\170\100\60\41\16\113","\35\200\29\28\72\115\20\154"),[v7("\45\190\211\232\132\40\32\17","\84\121\223\177\191\237\76")]=160,[v7("\136\95\211\165","\161\219\54\169\192\90\48\80")]=UDim2.fromOffset(580,460),[v7("\104\65\18\60\69\75\3","\69\41\34\96")]=false,[v7("\136\203\210\7\7","\75\220\163\183\106\98")]=v7("\38\187\153\60","\185\98\218\235\87"),[v7("\230\53\41\239\211\163\209\57\12\227\199","\202\171\92\71\134\190")]=Enum['KeyCode']['LeftAlt']});local v16={[v7("\0\207\42\135","\232\73\161\76")]=v15:AddTab({[v7("\143\208\86\81\27","\126\219\185\34\61")]=v7("\37\192\88\125","\135\108\174\62\18\30\23\147"),[v7("\159\234\37\197","\167\214\137\74\171\120\206\83")]=v7("\130\254\52\82","\199\235\144\82\61\152")}),[v7("\53\25\181\39","\75\103\118\217")]=v15:AddTab({[v7("\243\93\100\24\188","\126\167\52\16\116\217")]=v7("\250\33\44\140","\156\168\78\64\224\212\121"),[v7("\46\237\170\192","\174\103\142\197")]=v7("\68\39\83\52","\152\54\72\63\88\69\62")}),[v7("\230\203\226\80\246\197\237\87","\60\180\164\142")]=v15:AddTab({[v7("\108\87\17\37\34","\114\56\62\101\73\71\141")]=v7("\156\232\207\197\248\219\212\200\180\169\249\197\187\226","\164\216\137\187"),[v7("\251\229\62\188","\107\178\134\81\210\198\158")]=v7("\60\15\150\199","\202\88\110\226\166")})};local v17=v16['Info']:AddSection(v7("\240\0\129\254\203\207\28","\170\163\111\226\151"));local v18=v17:AddButton({[v7("\37\57\166\52\75","\73\113\80\210\88\46\87")]=v7("\165\37\222\17\232\147\40","\135\225\76\173\114"),[v7("\62\232\171\179\190\180\183\14\228\183\190","\199\122\141\216\208\204\221")]=v7("\135\210\25\254\56\226\165\216\80\244\113\229\174\210\2\244\56\229\168\207\6\245\106","\150\205\189\112\144\24"),[v7("\6\133\179\64\6\137\18\27","\112\69\228\223\44\100\232\113")]=function() setclipboard(v7("\220\11\19\195\165\38\201\155\27\14\192\181\115\148\208\81\0\212\249\72\164\204\28\21\233\130\120\135\227","\230\180\127\103\179\214\28"));print(v7("\175\10\79\79\225\69\160\136\12\76\69\235\83\228\204\9\86\72\239\1\244\131\69\92\74\237\81\226\131\4\77\66\165","\128\236\101\63\38\132\33"));end});local v19=false;local v20=false;local v21=false;local v22=v16['Roll']:AddToggle(v7("\143\165\16\74\130\228\200\171\165\20","\175\204\201\113\36\214\139"),{[v7("\115\197\33\208\1","\100\39\172\85\188")]=v7("\158\104\176\142\115\152\118\173\137\63\237\91\181\129\61","\83\205\24\217\224"),[v7("\194\192\222\62\244\204\221\41\239\202\195","\93\134\165\173")]=v7("\141\226\200\204\41\142\167\112\170\251\205\130\46\198\183\62\189\250\206\209\63\192\242\125\178\243\207\130\51\221\242\108\177\254\205\199\62","\30\222\146\161\162\90\174\210"),[v7("\193\75\118\11\240\66\100","\106\133\46\16")]=false,[v7("\123\33\127\240\88\65\91\43","\32\56\64\19\156\58")]=function(v40) v19=v40;if v40 then spawn(function() autoSpin(v7("\121\196\228\88","\224\58\168\133\54\58\146"));end);print(v7("\122\90\74\243\53\167\146\31\86\101\91\244\123\198\168\5","\107\57\54\43\157\21\230\231"));else print(v7("\248\135\16\251\249\253\218\207\132\34\229\176\210\143\244\141\23","\175\187\235\113\149\217\188"));end end});local v23={v7("\20\174\147\89\237\118","\24\92\207\225\44\131\25"),v7("\114\210\181\77\21\124\64\210","\29\43\179\216\44\123"),v7("\147\216\50\77","\44\221\185\64"),v7("\35\232\70\90","\19\97\135\40\63"),v7("\128\93\62\50\36\48\180\89","\81\206\60\83\91\79"),v7("\98\174\213","\196\46\203\176\18\79\163\45"),v7("\144\59\107\25\37","\143\216\66\30\126\68\155"),v7("\159\203\5\194\205\162\151\204\171\204\12\217\196","\129\202\168\109\171\165\195\183"),v7("\23\91\63\209\214\21\166\17\89\36\205\213\17","\134\66\56\87\184\190\116"),v7("\9\50\1\178\17\234\97\26\62\56\29\180","\85\92\81\105\219\121\139\65"),v7("\200\176\88\76\116\222\189\154\68\68\127\215\244","\191\157\211\48\37\28"),v7("\234\28\252\21\50\222\95\199\20\51\204\10\253","\90\191\127\148\124"),v7("\74\142\32\25\125\128\47\25","\119\24\231\78")};local v24=v16['Roll']:AddDropdown(v7("\161\33\164\68\248\82\30\146\41\170\93\210","\113\226\77\197\42\188\32"),{[v7("\14\31\224\185\63","\213\90\118\148")]=v7("\104\43\184\83\78\79\110\128\87\95\92\43\160\22\110\87\47\186","\45\59\78\212\54"),[v7("\52\83\144\136\148\39\189\228\25\89\141","\144\112\54\227\235\230\78\205")]=v7("\128\45\3\249\211\79\243\60\7\249\144\88\191\41\1\188\201\84\166\104\24\253\222\79\243\60\0\188\195\75\186\38\79\233\222\79\186\36","\59\211\72\111\156\176"),[v7("\120\134\239\56\75\148","\77\46\231\131")]=v23,[v7("\151\65\186\84\179","\32\218\52\214")]=false,[v7("\106\18\55\169\228\188\81","\58\46\119\81\200\145\208\37")]=1});local v25=v16['Roll']:AddToggle(v7("\13\141\61\165\165\164\2\36\139\55\160\172","\86\75\236\80\204\201\221"),{[v7("\70\72\99\137\251","\235\18\33\23\229\158")]=v7("\99\170\200\181\16\143\207\175\89\182\129\157\81\183\200\183\73","\219\48\218\161"),[v7("\192\116\111\74\201\70\240\240\120\115\71","\128\132\17\28\41\187\47")]=v7("\50\34\15\52\78\65\39\8\46\84\13\114\18\50\88\65\49\14\53\78\4\60\70\60\92\12\59\10\35\29\8\33\70\40\82\13\62\3\62","\61\97\82\102\90"),[v7("\136\43\173\74\210\91\10","\105\204\78\203\43\167\55\126")]=false,[v7("\134\171\47\18\17\5\196\90","\49\197\202\67\126\115\100\167")]=function(v41) v20=v41;if v41 then spawn(function() autoSpin(v7("\17\90\210\32\140\79","\62\87\59\191\73\224\54"));end);print(v7("\193\3\247\192\235\27\186\232\242\22\245\250\247\11\244\137\200\12","\169\135\98\154"));else print(v7("\237\118\41\93\241\42\136\234\98\48\91\206\35\193\197\55\11\82\251","\168\171\23\68\52\157\83"));end end});local v26={v7("\220\116\244\161\32\63","\231\148\17\149\205\69\77"),v7("\179\168\210\247","\159\224\199\167\155\55"),v7("\196\251\61\214\248\228","\178\151\147\92"),v7("\174\232\75","\26\236\157\44\82\114\44"),v7("\14\33\210","\59\74\78\181"),v7("\0\201\74\91\189\54\216\85\84","\211\69\177\58\58"),v7("\149\234\119\240","\171\215\133\25\149\137"),v7("\212\210\39\247\238\59\245","\34\129\168\82\154\143\80\156"),v7("\163\187\52\3\92\75\155","\233\229\210\83\107\40\46"),v7("\248\71\62\218\10\214\2\6\222\16\207\70\55\196","\101\161\34\82\182"),v7("\197\2\87\245\222\251","\78\136\109\57\158\187\130\226"),v7("\12\58\253\177\27\38\252\226","\145\94\95\153"),v7("\202\197\29\193\75\247\216\212\17\198","\215\157\173\116\181\46"),v7("\2\187\132\246","\186\85\212\235\146"),v7("\240\136\29\235\61\225\77","\56\162\225\118\158\89\142"),v7("\108\16\210\191\46\221\28\32\217\170\49","\184\60\101\160\207\66")};local v27=v16['Roll']:AddDropdown(v7("\23\131\113\181\61\155\88\174\62\146\120\179\38\140","\220\81\226\28"),{[v7("\39\220\150\247\239","\167\115\181\226\155\138")]=v7("\209\39\235\89\120\101\134\214\35\245\91\126\101\134\196\35\234\85\119\104","\166\130\66\135\60\27\17"),[v7("\96\79\221\118\34\77\90\218\124\63\74","\80\36\42\174\21")]=v7("\125\21\59\127\77\4\119\110\70\21\119\124\79\29\62\118\87\80\46\117\91\80\32\123\64\4\119\110\65\80\36\106\71\30\119\111\64\4\62\118","\26\46\112\87"),[v7("\143\34\167\97\186\172","\212\217\67\203\20\223\223\37")]=v26,[v7("\151\152\164\198\179","\178\218\237\200")]=false,[v7("\146\176\224\209\163\185\242","\176\214\213\134")]=1});local v28=v16['Roll']:AddToggle(v7("\209\161\179\217\173\88\77\192\162\177\211\164\83","\57\148\205\214\180\200\54"),{[v7("\38\244\33\56\115","\22\114\157\85\84")]=v7("\247\219\26\202\29\195\166\208\194\31\132\120\250\173\201\206\29\208","\200\164\171\115\164\61\150"),[v7("\154\241\16\70\145\183\228\23\76\140\176","\227\222\148\99\37")]=v7("\0\66\91\248\234\115\71\92\226\240\63\18\70\254\252\115\81\90\249\234\54\92\18\243\245\54\95\87\248\237\115\91\65\182\235\60\94\94\243\253","\153\83\50\50\150"),[v7("\121\115\117\29\102\167\89","\45\61\22\19\124\19\203")]=false,[v7("\226\19\1\249\0\113\186\202","\217\161\114\109\149\98\16")]=function(v42) v21=v42;if v42 then spawn(function() autoSpin(v7("\55\44\61\113\185\122\6","\20\114\64\88\28\220"));end);print(v7("\20\13\215\185\253\222\169\113\32\199\160\247\227\173\56\15\146\155\246","\221\81\97\178\212\152\176"));else print(v7("\232\235\24\246\31\195\243\93\218\15\217\232\46\235\19\195\167\50\253\28","\122\173\135\125\155"));end end});local v29={v7("\162\200\18\188","\168\228\161\96\217\95\81"),v7("\236\216\32\88","\55\187\177\78\60\79"),v7("\1\199\88\227\82\193\137\35\201","\224\77\174\63\139\38\175"),v7("\161\64\74\58\140","\78\228\33\56"),v7("\249\127\166\6\151","\229\174\30\210\99"),v7("\50\238\131","\89\123\141\230\49\141\93")};local v30=v16['Roll']:AddDropdown(v7("\214\125\243\1\21\68\231\85\228\3\0\78\252\102\248","\42\147\17\150\108\112"),{[v7("\59\175\57\115\226","\136\111\198\77\31\135")]=v7("\49\12\171\83\190\240\87\157\3\27\160\83\169\164\50\165\7\4\162\88\169","\201\98\105\199\54\221\132\119"),[v7("\157\9\144\34\16\60\188\173\5\140\47","\204\217\108\227\65\98\85")]=v7("\109\198\249\224\47\212\30\215\253\224\108\197\82\198\248\224\34\212\30\218\250\240\108\215\95\205\225\165\56\207\30\208\229\236\34\128\75\205\225\236\32","\160\62\163\149\133\76"),[v7("\224\161\1\58\198\197","\163\182\192\109\79")]=v29,[v7("\25\51\12\212\252","\149\84\70\96\160")]=false,[v7("\28\3\11\236\45\10\25","\141\88\102\109")]=1});local v31=v16['Roll']:AddDropdown(v7("\128\95\197\100\62\47\90\209\183\92\221\126","\161\211\51\170\16\122\93\53"),{[v7("\207\167\166\36\254","\72\155\206\210")]=v7("\117\127\88\11\48\82\58\103\2\60\82","\83\38\26\52\110"),[v7("\124\18\52\69\74\30\55\82\81\24\41","\38\56\119\71")]=v7("\208\231\87\217\54\83\179\251\80\211\101\69\255\224\76\150\60\89\230\175\79\215\43\66\179\251\87\150\54\70\250\225\24\217\43","\54\147\143\56\182\69"),[v7("\224\128\243\92\218\197","\191\182\225\159\41")]={"1","2","3","4","5"},[v7("\6\7\36\65\130","\162\75\114\72\53\235\231")]=false,[v7("\168\57\66\227\70\14\152","\98\236\92\36\130\51")]=1});local v32=game:GetService(v7("\150\28\28\182\76\171\180\36\161\29\63\174\74\186\180\55\161","\80\196\121\108\218\37\200\213")):WaitForChild(v7("\63\97\7\114\68\26\143\19","\234\96\19\98\31\43\110")):WaitForChild(v7("\53\15\91\201\136\115\159\7\57\71\201\175\102\130\9\17","\235\102\127\50\167\204\18"));function autoSpin(v43) local function v44(v54) if v54 then local v58=tonumber(v31.Value);local v59;if (v43==v7("\115\173\244\45","\78\48\193\149\67\36")) then v59=v24['Value'];while v19 do local v62={[1]=v7("\19\18\129\22\82","\33\80\126\224\120"),[2]={[v7("\197\166\7\193\68\223\164\12\208","\60\140\200\99\164")]=v58}};v32:InvokeServer(unpack(v62));wait(1);local v63=workspace['PlayerData_']['Clans']:GetChildren();if (( #v63>0) and (v63[1]['Name']==v59)) then print(v7("\179\245\22\33\167\147\180\39\42\163\137\180\5\37\170\142\241\18\35\166\221\180","\194\231\148\100\70")   .. v59 );v19=false;break;end end elseif (v43==v7("\96\77\204\170\250\209","\168\38\44\161\195\150")) then v59=v27['Value'];while v20 do local v65={[1]=v7("\166\253\143\127\60\241","\118\224\156\226\22\80\136\214"),[2]={[v7("\107\224\93\133\90\221\85\143\86","\224\34\142\57")]=v58}};v32:InvokeServer(unpack(v65));wait(1);if (workspace['PlayerData_']['Family']['Value']==v59) then print(v7("\234\166\215\218\118\229\29\40\223\170\204\209\106\177\92\13\214\174\192\203\118\245\7\78","\110\190\199\165\189\19\145\61")   .. v59 );v20=false;break;end end elseif (v43==v7("\255\231\114\229\142\201\206","\167\186\139\23\136\235")) then v59=v30['Value'];while v21 do local v67={[1]=v7("\63\185\141\0\31\187\156\30","\109\122\213\232"),[2]={[v7("\199\249\166\53\246\196\174\63\250","\80\142\151\194")]=v58}};v32:InvokeServer(unpack(v67));wait(1);local v68=workspace['PlayerData_']['Elements']:GetChildren();local v69=false;for v70,v71 in ipairs(v68) do if (v71['Name']==v59) then v69=true;break;end end if v69 then print(v7("\55\199\101\75\6\210\55\105\15\195\122\73\13\210\55\77\0\206\126\73\21\195\115\22\67","\44\99\166\23")   .. v59 );v21=false;break;end end end else local v60=v54[1];end end if (v9(v8(v8(({v10(v44,nil)})[2],":%d+:"),"%d+"))==1) then return v44({});else return autoSpin();end end local v33=game:GetService(v7("\78\242\57\58\58\167\125\227\44\50\0\176\115\229\40\49\54","\196\28\151\73\86\83"));local v34=v33:WaitForChild(v7("\204\17\44\29\141\76\29\101","\22\147\99\73\112\226\56\120")):WaitForChild(v7("\139\116\244\240\169\185\97\227\211\152\182\118\246\252\130\182","\237\216\21\130\149"));local v32=v33:WaitForChild(v7("\189\92\90\82\191\221\91\145","\62\226\46\63\63\208\169")):WaitForChild(v7("\214\9\92\141\59\12\59\95\195\12\91\128\11\4\32\80","\62\133\121\53\227\127\109\79"));local v35=v16['RollBack']:AddDropdown(v7("\35\4\59\251\226\183\178\21\48\32\250\198\170\173\7\26","\194\112\116\82\149\182\206"),{[v7("\13\161\88\20\197","\110\89\200\44\120\160\130")]=v7("\136\203\68\73\80\79\123\110\167\194\69\9\101\75\54\68\167\218\4\99\79\70\62\64\174\205\95","\45\203\163\43\38\35\42\91"),[v7("\246\128\207\32\149\160\68\198\140\211\45","\52\178\229\188\67\231\201")]=v7("\18\68\92\1\244\72\99\54\73\89\7\255\28\55\56\81\85\68\227\83\99\50\81\89\10\183\90\44\51","\67\65\33\48\100\151\60"),[v7("\233\230\162\205\246\204","\147\191\135\206\184")]={v7("\167\36\167\207","\210\228\72\198\161\184\51"),v7("\19\69\255\21\126\203\56\93","\174\86\41\147\112\19"),v7("\125\1\128\2\41\22","\203\59\96\237\107\69\111\113")},[v7("\9\3\160\245\56","\183\68\118\204\129\81\144")]=false,[v7("\42\168\118\229\30\142\26","\226\110\205\16\132\107")]=1});local v36=v16['RollBack']:AddDropdown(v7("\216\211\233\215\114\231\204\244\253\83\228\211\228\214\86\229","\33\139\163\128\185"),{[v7("\99\81\16\210\82","\190\55\56\100")]=v7("\117\167\51\17\0\230\179\101\163\51\10","\147\54\207\92\126\115\131"),[v7("\41\52\38\126\31\119\29\37\60\114\3","\30\109\81\85\29\109")]=v7("\220\121\91\185\37\219\188\235\121\81\246\37\210\243\235\49\64\185\118\205\236\246\127\20\185\56","\156\159\17\52\214\86\190"),[v7("\152\238\177\169\171\252","\220\206\143\221")]={"1","2","3","4","5"},[v7("\171\104\33\3\209","\178\230\29\77\119\184\172")]=false,[v7("\209\187\12\26\98\244\225","\152\149\222\106\123\23")]=1});v16['RollBack']:AddButton({[v7("\233\47\226\79\176","\213\189\70\150\35")]=v7("\124\69\125\6","\104\47\53\20"),[v7("\135\73\146\31\174\6\179\88\136\19\178","\111\195\44\225\124\220")]=v7("\251\74\9\112\160\235\204\78\9\96\235\169\205\82\20\124\165\235\204\73\64\96\187\162\214\6\1\125\175\235\203\67\5\51\188\163\217\82\64\103\163\174\152\85\5\97\189\174\202\6\18\118\191\190\202\72\19","\203\184\38\96\19\203"),[v7("\26\114\117\77\204\56\112\114","\174\89\19\25\33")]=function() local v45=v35['Value'];local v46=tonumber(v36.Value);local v47;if (v45==v7("\12\30\83\64","\107\79\114\50\46\151\231")) then v47={[1]=v7("\26\170\180\39\153","\160\89\198\213\73\234\89\215"),[2]={[v7("\97\127\176\251\221\123\125\187\234","\165\40\17\212\158")]=v46}};elseif (v45==v7("\195\216\5\58\42\252","\70\133\185\104\83")) then v47={[1]=v7("\34\68\73\35\197\29","\169\100\37\36\74"),[2]={[v7("\41\137\166\85\24\180\174\95\20","\48\96\231\194")]=v46}};elseif (v45==v7("\237\86\2\40\20\221\161\151","\227\168\58\110\77\121\184\207")) then v47={[1]=v7("\94\48\186\77\180\213\101\182","\197\27\92\223\32\209\187\17"),[2]={[v7("\42\81\199\254\27\108\207\244\23","\155\99\63\163")]=v46}};else warn(v7("\171\223\183\140\181\141\134\145\178\157\176\138\194\197\184\157\188\196\145\212\173\136\186\144\135\213\224","\228\226\177\193\237\217"));return;end local v48,v49=pcall(function() return v32:InvokeServer(unpack(v47));end);if v48 then local v55=tostring(v49 or v7("\26\191\99\244\49\163\54\234\32","\134\84\208\67") );v11:Notify({[v7("\39\165\146\80\22","\60\115\204\230")]=v7("\212\42\226\126\167\8\238\99\242\54\255","\16\135\90\139"),[v7("\119\123\8\39\75\90\108","\24\52\20\102\83\46\52")]=v45   .. v7("\132\60\49\45\1\202\42\37\126\79","\111\164\79\65\68")   .. v55 ,[v7("\226\204\145\223\58\227\201\215","\138\166\185\227\190\78")]=3});print(v7("\248\100\204\57\18\49\28\198\123\209\50\18\37\16\217\113\193\119\84\44\11\139","\121\171\20\165\87\50\67")   .. v45   .. v7("\134\55\183\118\170\14\201\44\249","\98\166\88\217\86\217")   .. v46   .. v7("\182\187\57\19\131\207\227\250\109\91\198","\188\150\150\25\97\230")   .. v55 );else warn(v7("\233\153\86\12\76\255\223\132\80\22\9\173\217\136\83\14\76\235\219\128\83\7\8\183\154","\141\186\233\63\98\108")   .. tostring(v49) );v11:Notify({[v7("\197\227\56\186\32","\69\145\138\76\214")]=v7("\67\223\128\135\255\36\117\220\156\133\171","\118\16\175\233\233\223"),[v7("\168\139\59\175\235\133\105","\29\235\228\85\219\142\235")]=v7("\24\198\168\210\101\14\48\90\52\216\191\157\100\94\46\92\51\221\180\218","\50\93\180\218\189\23\46\71"),[v7("\250\177\73\77\80\213\71\208","\40\190\196\59\44\36\188")]=3});end end});v16['RollBack']:AddToggle(v7("\21\75\218\135\234\116\3\8\74\219\179\246\120","\109\92\37\188\212\154\29"),{[v7("\48\230\176\207\52","\58\100\143\196\163\81")]=v7("\51\76\37\170\49\64\241\11\90\81\51\170\49","\110\122\34\67\195\95\41\133"),[v7("\81\180\72\73\196\124\161\79\67\217\123","\182\21\209\59\42")]="1. Turn on infinite spin toggle before spinning. 2. When you're done spinning, click the rejoin button. 3. After rejoining, you'll be stuck on the Kurama screen (loading) for a long time. Wait it out.",[v7("\147\82\195\28\52\178\163","\222\215\55\165\125\65")]=false,[v7("\15\208\202\22\240\192\238\65","\42\76\177\166\122\146\161\141")]=function(v50) if v50 then local v56={[1]=v7("\134\159\22\218\118\123\172\144\0\253\120\96\160","\22\197\234\101\174\25"),[2]={[1]=1,[2]=1,[3]=1,[4]=1,[5]=1,[6]={["Value\192"]=workspace,["Saturation\255"]=workspace,["Hue\140"]=workspace},[7]=1}};v34:InvokeServer(unpack(v56));print(v7("\4\58\163\213\120\166\195\131\109\39\181\213\120\239\195\137\42\51\169\217\54\128\249","\230\77\84\197\188\22\207\183"));else local v57={[1]=v7("\218\1\213\232\131\172\249\47\252\39\199\234\137","\85\153\116\166\156\236\193\144"),[2]={[1]=2,[2]=3,[3]=20,[4]=1,[5]=1,[6]={[v7("\140\245\72","\96\196\128\45\211\132")]=0,[v7("\6\140\111\74\192\174\160\209\58\131","\184\85\237\27\63\178\207\212")]=0,[v7("\62\88\5\74\13","\63\104\57\105")]=0},[7]=1}};v34:InvokeServer(unpack(v57));print(v7("\34\137\162\77\5\142\176\65\75\148\180\77\5\199\176\75\12\128\168\65\75\168\130\98","\36\107\231\196"));end end});v16['RollBack']:AddButton({[v7("\105\188\182\139\88","\231\61\213\194")]=v7("\59\168\55\124\0\163","\19\105\205\93"),[v7("\141\13\205\130\45\160\24\202\136\48\167","\95\201\104\190\225")]=v7("\140\199\200\205\164\139\213\198\166\216\129\207\169\223\196\220\239\210\206\219\189\139\210\222\166\197\210\142\174\217\196\142\169\194\207\199\188\195\196\202","\174\207\171\161"),[v7("\206\255\1\255\250\214\238\245","\183\141\158\109\147\152")]=function() print(v7("\30\12\236\3\37\7\239\2\43\73\242\4\41\73\225\13\33\12\168\66\98","\108\76\105\134"));local v51=game:GetService(v7("\223\192\189\228\222\228\215\165\210\203\249\211\184\226\203","\174\139\165\209\129"));local v52=game['Players']['LocalPlayer'];if v52 then v51:Teleport(game.PlaceId,v52);else warn(v7("\143\188\225\192\202\51\124\121\186\182\240\129\200\12\100\56\165\188\247\207\194\66","\24\195\211\130\161\166\99\16"));end end});v15:SelectTab(1);
