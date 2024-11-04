WITH twitter_data AS (
    SELECT
        campaign_id,
        channel,
        clicks,
        url_clicks,
        date,
        engagements,
        impressions,
        spend,
    FROM paiidads.paid_ads.twitter
)

SELECT
    channel,
    SUM(spend) / NULLIF(SUM(clicks), 0) AS cost_per_engagement,
    SUM(spend) / NULLIF(SUM(url_clicks), 0) AS conversion_cost,
    SUM(impressions) AS total_impressions,
    SUM(spend) / NULLIF(SUM(clicks), 0) AS cpc
FROM twitter_data
GROUP BY channel