WITH facebook_data AS (
    SELECT
        ad_id,
        add_to_cart,
        campaign_id,
        channel,
        clicks,
        comments,
        complete_registration,
        date,
        impressions,
        likes,
        purchase,
        shares,
        spend,
        views,
    FROM paiidads.paid_ads.facebook
)

SELECT
    channel,
    SUM(spend) / (SUM(likes) + SUM(comments) + SUM(shares) + SUM(clicks) + SUM(views)) AS cost_per_engagement,
    SUM(spend) / SUM(purchase) AS conversion_cost,
    SUM(impressions) AS total_impressions,
    SUM(spend) / NULLIF(SUM(clicks), 0) AS cpc
FROM facebook_data
GROUP BY channel