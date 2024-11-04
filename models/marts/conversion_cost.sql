WITH conv_bing AS (
    SELECT
        'Bing' AS channel,
        conversion_cost
    FROM {{ ref('stg_bing') }}
),

conv_facebook AS (
    SELECT
        'Facebook' AS channel,
        conversion_cost
    FROM {{ ref('stg_facebook') }}
),

conv_tiktok AS (
    SELECT
        'TikTok' AS channel,
        conversion_cost
    FROM {{ ref('stg_tiktok') }}
),

conv_twitter AS (
    SELECT
        'Twitter' AS channel,
        conversion_cost
    FROM {{ ref('stg_twitter') }}
)

SELECT * FROM conv_bing
UNION ALL
SELECT * FROM conv_facebook
UNION ALL
SELECT * FROM conv_tiktok
UNION ALL
SELECT * FROM conv_twitter