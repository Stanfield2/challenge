WITH cpc_bing AS (
    SELECT
        'Bing' AS channel,
        cpc
    FROM {{ ref('stg_bing') }}
),

cpc_facebook AS (
    SELECT
        'Facebook' AS channel,
        cpc
    FROM {{ ref('stg_facebook') }}
),

cpc_tiktok AS (
    SELECT
        'TikTok' AS channel,
        cpc
    FROM {{ ref('stg_tiktok') }}
),

cpc_twitter AS (
    SELECT
        'Twitter' AS channel,
        cpc
    FROM {{ ref('stg_twitter') }}
)

SELECT * FROM cpc_bing
UNION ALL
SELECT * FROM cpc_facebook
UNION ALL
SELECT * FROM cpc_tiktok
UNION ALL
SELECT * FROM cpc_twitter