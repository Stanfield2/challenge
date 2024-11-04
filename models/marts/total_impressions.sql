WITH imp_bing AS (
    SELECT
        'Bing' AS channel,
        total_impressions
    FROM {{ ref('stg_bing') }}
),

imp_facebook AS (
    SELECT
        'Facebook' AS channel,
        total_impressions
    FROM {{ ref('stg_facebook') }}
),

imp_tiktok AS (
    SELECT
        'TikTok' AS channel,
        total_impressions
    FROM {{ ref('stg_tiktok') }}
),

imp_twitter AS (
    SELECT
        'Twitter' AS channel,
        total_impressions
    FROM {{ ref('stg_twitter') }}
)

SELECT * FROM imp_bing
UNION ALL
SELECT * FROM imp_facebook
UNION ALL
SELECT * FROM imp_tiktok
UNION ALL
SELECT * FROM imp_twitter