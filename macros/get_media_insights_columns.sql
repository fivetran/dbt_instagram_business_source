{% macro get_media_insights_columns() %}

{% set columns = [
    {"name": "_fivetran_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "carousel_album_engagement", "datatype": dbt_utils.type_int()},
    {"name": "carousel_album_impressions", "datatype": dbt_utils.type_int()},
    {"name": "carousel_album_reach", "datatype": dbt_utils.type_int()},
    {"name": "carousel_album_saved", "datatype": dbt_utils.type_int()},
    {"name": "carousel_album_video_views", "datatype": dbt_utils.type_int()},
    {"name": "comment_count", "datatype": dbt_utils.type_int()},
    {"name": "id", "datatype": dbt_utils.type_int()},
    {"name": "like_count", "datatype": dbt_utils.type_int()},
    {"name": "story_exits", "datatype": dbt_utils.type_int()},
    {"name": "story_impressions", "datatype": dbt_utils.type_int()},
    {"name": "story_reach", "datatype": dbt_utils.type_int()},
    {"name": "story_replies", "datatype": dbt_utils.type_int()},
    {"name": "story_taps_back", "datatype": dbt_utils.type_int()},
    {"name": "story_taps_forward", "datatype": dbt_utils.type_int()},
    {"name": "video_photo_engagement", "datatype": dbt_utils.type_int()},
    {"name": "video_photo_impressions", "datatype": dbt_utils.type_int()},
    {"name": "video_photo_reach", "datatype": dbt_utils.type_int()},
    {"name": "video_photo_saved", "datatype": dbt_utils.type_int()},
    {"name": "video_views", "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
