# dbt_instagram_business_source v0.3.0

## Schema Changes  
2 total changes • 0 possible breaking changes  

| Data Model | Change type | Old name | New name | Notes |
|------------|-------------|----------|----------|-------|
| [`stg_instagram_business__media_insights`](https://fivetran.github.io/dbt_instagram_business_source/#!/model/model.instagram_business_source.stg_instagram_business__media_insights) | New Columns | | `carousel_album_shares`, `carousel_album_views`, `story_shares`, `story_views`, `video_photo_shares`, `reel_views`, `source_relation` | New metrics |
| [`stg_instagram_business__media_insights`](https://fivetran.github.io/dbt_instagram_business_source/#!/model/model.instagram_business_source.stg_instagram_business__media_insights) | Removed Columns | `carousel_album_impressions`, `carousel_album_video_views`, `story_impressions`, `video_photo_impressions`, `video_views`, `reel_plays` | | Deprecated columns |

## Updates
- [April 2025 Fivetran Connector Updates](https://fivetran.com/docs/connectors/applications/instagram-business/changelog#april2025)

## Documentation
- Corrected references to connectors and connections in the README. ([#13](https://github.com/fivetran/dbt_instagram_business_source/pull/13))

# dbt_instagram_business_source v0.2.1
[PR #9](https://github.com/fivetran/dbt_instagram_business_source/pull/9) includes the following updates.

## Feature Updates
- Addition of the following fields and accompanying documentation to the `stg_instagram_business__media_insights` model:
    - `reel_comments`
    - `reel_likes`
    - `reel_plays`
    - `reel_reach`
    - `reel_shares`
    - `reel_total_interactions`

## Documentation Updates
- Included documentation for the `is_most_recent_record` field for the `stg_instagram_business__media_insights` within the `stg_instagram_business.yml` docs file.

## Under the Hood:

- Incorporated the new `fivetran_utils.drop_schemas_automation` macro into the end of each Buildkite integration test job.
- Updated the pull request [templates](/.github).

## Contributors
- [@IbraFal](https://github.com/IbraFal) ([PR #9](https://github.com/fivetran/dbt_instagram_business_source/pull/9))

# dbt_instagram_business_source v0.2.0

## 🚨 Breaking Changes 🚨:
[PR #5](https://github.com/fivetran/dbt_instagram_business_source/pull/5) includes the following breaking changes:
- Dispatch update for dbt-utils to dbt-core cross-db macros migration. Specifically `{{ dbt_utils.<macro> }}` have been updated to `{{ dbt.<macro> }}` for the below macros:
    - `any_value`
    - `bool_or`
    - `cast_bool_to_text`
    - `concat`
    - `date_trunc`
    - `dateadd`
    - `datediff`
    - `escape_single_quotes`
    - `except`
    - `hash`
    - `intersect`
    - `last_day`
    - `length`
    - `listagg`
    - `position`
    - `replace`
    - `right`
    - `safe_cast`
    - `split_part`
    - `string_literal`
    - `type_bigint`
    - `type_float`
    - `type_int`
    - `type_numeric`
    - `type_string`
    - `type_timestamp`
    - `array_append`
    - `array_concat`
    - `array_construct`
- For `current_timestamp` and `current_timestamp_in_utc` macros, the dispatch AND the macro names have been updated to the below, respectively:
    - `dbt.current_timestamp_backcompat`
    - `dbt.current_timestamp_in_utc_backcompat`
- Dependencies on `fivetran/fivetran_utils` have been upgraded, previously `[">=0.3.0", "<0.4.0"]` now `[">=0.4.0", "<0.5.0"]`.

## Bug Fixes
- Fixed a typo in the custom database variable. Changed from `instgram_business_database` to `instagram_business_database`. ([#7](https://github.com/fivetran/dbt_instagram_business_source/pull/7))

## Contributors
- [@dougpm](https://github.com/dougpm) ([#7](https://github.com/fivetran/dbt_instagram_business_source/pull/7))
# dbt_instagram_business_source v0.1.0

The original release! This package contains staging models, designed to work simultaneously with our [Instagram Business modeling package](https://github.com/fivetran/dbt_instagram_business) and our [Social Media Reporting package](https://github.com/fivetran/dbt_social_media_reporting). The staging models name columns consistently across all packages:
 * Boolean fields are prefixed with `is_` or `has_`
 * Timestamps are appended with `_timestamp`
 * ID primary keys are prefixed with the name of the table. For example, the media insights table's ID column is renamed `post_id`
