WITH eng_bing AS (
    SELECT
        'Bing' AS channel,
        cost_per_engagement
    FROM {{ ref('stg_bing') }}
),

eng_facebook AS (
    SELECT
        'Facebook' AS channel,
        cost_per_engagement
    FROM {{ ref('stg_facebook') }}
),

eng_tiktok AS (
    SELECT
        'TikTok' AS channel,
        cost_per_engagement
    FROM {{ ref('stg_tiktok') }}
),

eng_twitter AS (
    SELECT
        'Twitter' AS channel,
        cost_per_engagement
    FROM {{ ref('stg_twitter') }}
)

SELECT * FROM eng_bing
UNION ALL
SELECT * FROM eng_facebook
UNION ALL
SELECT * FROM eng_tiktok
UNION ALL
SELECT * FROM eng_twitter