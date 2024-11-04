WITH tiktok_data AS (
    SELECT
        ad_id,
        adgroup_id,
        campaign_id,
        channel,
        clicks,
        date,
        impressions,
        spend,
        conversions
    FROM paiidads.paid_ads.tiktok
)

SELECT
    channel,
    SUM(spend) / NULLIF(SUM(clicks), 0) AS cost_per_engagement,
    SUM(spend) / NULLIF(SUM(conversions), 0) AS conversion_cost,
    SUM(impressions) AS total_impressions,
    SUM(spend) / NULLIF(SUM(clicks), 0) AS cpc
FROM tiktok_data
GROUP BY channel