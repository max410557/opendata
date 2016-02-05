set @var = '資料';  
set @num = '1.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1; 

set @var = '資訊';
set @num = '2.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '統計表';
set @num = '3.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '人數';
set @num = '4.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '預算';
set @num = '5.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '決算';
set @num = '6.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '案件';
set @num = '7.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '計畫';
set @num = '8.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '預算案';
set @num = '9.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '普查';
set @num = '10.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '情形';
set @num = '11.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '分析';
set @num = '12.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '人口';
set @num = '13.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '研究';
set @num = '14.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '會計報告';
set @num = '15.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '統計資料';
set @num = '16.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '報告';
set @num = '17.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '內容';
set @num = '18.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '公告';
set @num = '19.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '件數';
set @num = '20.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '函釋';
set @num = '21.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '種類';
set @num = '22.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '明細表';
set @num = '23.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '年齡層';
set @num = '24.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '調查';
set @num = '25.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '類別';
set @num = '26.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '名單';
set @num = '27.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '平衡表';
set @num = '28.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '病例';
set @num = '29.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '欄位';
set @num = '30.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '概況';
set @num = '31.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '經費';
set @num = '32.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '政策';
set @num = '33.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '單位預算';
set @num = '34.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '戶數';
set @num = '35.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '作業';
set @num = '36.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '目錄';
set @num = '37.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '預算表';
set @num = '38.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '決算書';
set @num = '39.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '總額';
set @num = '40.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '說明';
set @num = '41.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '現金流量';
set @num = '42.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '狀況';
set @num = '43.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '總預算';
set @num = '44.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;

set @var = '分類';
set @num = '45.'; 
set @path = concat('/tmp/',@num,@var,'.csv'); 
set @script = concat(
' SELECT @var category, a.nid, a.title, b.field_body_value, concat(\'http://data.gov.tw/node/\',a.nid) url ',
' INTO OUTFILE \'', @path,'\''
' FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'"\' ',
' LINES TERMINATED BY "
" ',
' FROM test.node a ',
' inner join test.field_data_field_body b ',
' on a.nid = b.entity_id ',
' where 1=1 ',
' and a.type=\'metadataset\' ' ,
' and (a.title like concat(\'%\',@var,\'%\') or b.field_body_value like concat(\'%\',@var,\'%\'))'
);
prepare s1 from @script;
execute s1;deallocate prepare s1;
