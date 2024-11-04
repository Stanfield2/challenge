WITH bing_data AS (
    SELECT
        ad_id,
        adset_id,
        campaign_id,
        channel,
        clicks,
        date,
        imps AS impressions,
        revenue,
        spend,
        conv AS conversions
    FROM paiidads.paid_ads.bing
)

SELECT
    channel,
    SUM(spend) / NULLIF(SUM(clicks), 0) AS cost_per_engagement,
    SUM(spend) / NULLIF(SUM(conversions), 0) AS conversion_cost,
    SUM(impressions) AS total_impressions,
    SUM(spend) / NULLIF(SUM(clicks), 0) AS cpc
FROM bing_data
GROUP BY channel
