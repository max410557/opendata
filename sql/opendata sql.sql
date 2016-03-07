1.資料集id(node)
node.nid

2.資料集名稱(node)
node.title

3.資料集描述(field_data_field_body)
field_data_field_body.field_body_value

4.資料集連結(node)
concat(\'http://data.gov.tw/node/\',node.nid)

5.資料資源描述(field_revision_field_resource_description_g)
field_revision_field_resource_description_g.field_resource_description_g_value

6.資料資源下載連結(field_data_field_resource_url_g)
field_data_field_resource_url_g.field_resource_url_g_url

7.資料資源檔案格式(taxonomy_term_data)
taxonomy_term_data.name

8.連線狀態


9.下載檔案格式




完整SQL
SELECT 
a.nid 資料集id, 
a.title 資料集名稱, 
b.field_body_value 資料集描述, 
concat('http://data.gov.tw/node/',a.nid) 資料集連結,
h.field_resource_description_g_value 資料資源描述, 
e.field_resource_url_g_url 資料資源下載連結, 
g.name 資料資源檔案格式
FROM opendata_analysis.node a
inner join opendata_analysis.field_data_field_body b
on a.nid = b.entity_id
inner join opendata_analysis.field_data_field_dataset_status c
on a.nid = c.entity_id
right join opendata_analysis.field_data_field_gov_resource d
on a.nid = d.entity_id
inner join opendata_analysis.field_data_field_resource_url_g e
on d.field_gov_resource_value = e.entity_id
inner join opendata_analysis.field_data_field_format_g f
on d.field_gov_resource_value = f.entity_id
inner join opendata_analysis.taxonomy_term_data g
on f.field_format_g_tid = g.tid
left join opendata_analysis.field_revision_field_resource_description_g h
on d.field_gov_resource_value = h.entity_id

where 1=1
and c.field_dataset_status_value = '4'

