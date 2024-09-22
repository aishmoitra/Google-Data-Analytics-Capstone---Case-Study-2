**[Case Study 2: How Can a Wellness Technology Company Play It
Smart?]{.underline}**

**[Background]**

Urška Sršen and Sando Mur founded Bellabeat, a high-tech company that
manufactures health-focused smart products. Sršen used her background as
an artist to develop beautifully designed technology that informs and
inspires women around the world. Collecting data on activity, sleep,
stress, and reproductive health has allowed Bellabeat to empower women
with knowledge about their own health and habits. Since it was founded
in 2013, Bellabeat has grown rapidly and quickly positioned itself as a
tech-driven wellness company for women. By 2016, Bellabeat had opened
offices around the world and launched multiple products. Bellabeat
products became available through a growing number of online retailers
in addition to their own e-commerce channel on their website. The
company has invested in traditional advertising media, such as radio,
out-of-home billboards, print, and television, but focuses on digital
marketing extensively. Bellabeat invests year-round in Google Search,
maintaining active Facebook and Instagram pages, and consistently
engages consumers on Twitter. Additionally, Bellabeat runs video ads on
Youtube and display ads on the Google Display Network to support
campaigns around key marketing dates. Sršen knows that an analysis of
Bellabeat's available consumer data would reveal more opportunities for
growth. She has asked the marketing analytics team to focus on a
Bellabeat product and analyze smart device usage data in order to gain
insight into how people are already using their smart devices. Then,
using this information, she would like high-level recommendations for
how these trends can inform Bellabeat marketing strategy.

**[Scenario]**

You are a junior data analyst working on the marketing analyst team at
Bellabeat, a high-tech manufacturer of health-focused products for
women. Bellabeat is a successful small company, but they have the
potential to become a larger player in the global smart device market.
Urška Sršen, cofounder and Chief Creative Officer of Bellabeat, believes
that analyzing smart device fitness data could help unlock new growth
opportunities for the company. You have been asked to focus on one of
Bellabeat's products and analyze smart device data to gain insight into
how consumers are using their smart devices. The insights you discover
will then help guide marketing strategy for the company. You will
present your analysis to the Bellabeat executive team along with your
high-level recommendations for Bellabeat's marketing strategy.

**[ASK]**

**[Business Task]**

The business task is to:

1.  Analyze smart device usage data to uncover relevant trends.

2.  Apply these insights to a Bellabeat product.

3.  Provide actionable recommendations to optimize Bellabeat\'s
    marketing strategy based on the analysis.

**[PREPARE]**

**[Data Sources]**

**FitBit Fitness Tracker Data**

**Overview:** This dataset contains personal fitness tracker data
collected from 30 Fitbit users who voluntarily shared their minute-level
data on physical activity, heart rate, and sleep monitoring. The dataset
includes daily information on activities such as steps, calories burned,
distances travelled, and sleep patterns, which provides insight into
users\' daily health habits.

**[PROCESS]**

1.  **Tools Used:** I chose MySQL for my analysis because I was working
    with a large dataset. I also chose Tableau and R for data
    visualizations.

2.  **Database Creation**: I created a database called fitbit_dataset_1
    to store data from December 3, 2016, to November 4, 2016, which
    included 11 tables. Additionally, I set up another database named
    fitbit_dataset_2 for data from December 4, 2016, to December 5,
    2016, which contained 18 tables.

3.  **Data Exploration**: To understand the structure of the 29 tables
    across both databases, I used the DESCRIBE function. This helped me
    get a clear view of the table schemas. I also employed the SELECT \*
    FROM function to explore the data within these tables.

4.  **Data Selection for Analysis**: Since my analysis focused on daily
    activities, I decided to work exclusively with the data from
    fitbit_dataset_2. From this dataset, I selected the following tables
    for my analysis:

    -   dailyactivity_merged.csv

    -   heartrate_seconds_merged.csv

    -   sleepday_merged.csv

    -   weightloginfo_merged.csv

This structured approach allowed me to effectively manage and analyze
the Fitbit data, focusing on the insights that matter most.

**[ANALYZE & SHARE]**

As I delved into the FitBit Fitness Tracker dataset, I explored various
aspects of user activity, health metrics, and their relationships.
Here's a structured overview of my findings:

1.  **Average Steps and Calories Burned:**

> I calculated the average number of steps taken and calories burned
> across all users. My analysis showed an average of 7,637.91 steps and
> 2,303.61 calories burned daily. While this indicates that users are
> relatively active, the average is below the 10,000 steps recommended
> by the CDC. This suggests that users could benefit from encouragement
> to increase their daily steps and optimize their calorie burning.

2.  **User Segmentation Based on Daily Steps:**

> I categorized users into three groups based on their average daily
> steps (Fig 1.0):

-   **Moderately Active Users (19 users)**: Engaging in 5,000 to 10,000
    steps, this is the largest group.

-   **Low Activity Users (8 users)**: Taking fewer than 5,000 steps,
    indicating a need for more motivation**.**

-   **Highly Active Users (7 users)**: Exceeding 10,000 steps, likely
    committed to their fitness.

> ![](./image1.png){width="4.858004155730534in"
> height="5.486111111111111in"}
>
> **Fig 1.0**

3.  **Average Heart Rate Analysis:**

> I assessed the average heart rate for each user, which is crucial for
> evaluating cardiovascular health. The average heart rate was 77.32
> bpm, generally considered normal for adults. This suggests that many
> users are at a moderate fitness level, depending on their overall
> lifestyle.

4.  **Correlation Between Heart Rate and Activity Levels:**

> I analyzed the relationship between heart rates and daily steps.
> Although the average heart rates ranged from 66.13 bpm to 93.78 bpm, I
> found that higher activity levels did not consistently correlate with
> lower heart rates. For instance, User ID 8877689391 had high activity
> but a moderate heart rate, while User ID 2026352035 showed low
> activity and a higher heart rate, indicating potential health issues.
> (Fig 1.1)
>
> ![](./image2.png){width="6.268055555555556in"
> height="4.148611111111111in"}
>
> **Fig 1.1**

5.  **Average Sleep Duration Calculation:**

> I calculated the average sleep duration, which was 419.46 minutes
> (about 7 hours). This is slightly below the recommended 7-9 hours for
> adults. Insufficient sleep can lead to various health issues,
> highlighting the need for users to focus on sleep quality.

6.  **Correlation Between Sleep and Activity:**

> I explored the relationship between average sleep duration and daily
> steps. I noted patterns where some users had high sleep duration but
> low activity, suggesting they may need motivational resources. For
> example, User 1844505072 had good sleep but low steps, indicating a
> potential area for improvement. (Fig 1.2)
>
> ![](./image3.png){width="6.268055555555556in"
> height="4.6402777777777775in"}
>
> **Fig 1.2**

7.  **Relationship Between Sleep Duration and Heart Rate:**

> I looked at how sleep duration correlates with heart rates. Users with
> more sleep generally had lower heart rates, suggesting better stress
> management. However, some users, like 2026352035, had high sleep but
> also a high heart rate, indicating the need for further investigation
> into their health.(Fig 1.3)
>
> ![](./image4.png){width="6.268055555555556in"
> height="4.6402777777777775in"}
>
> **Fig 1.3**

8.  **Average Weight Analysis:**

> I calculated the average weight for each user, finding it to be 72.03
> kg. The average BMI of 25.18, which falls in the overweight category.
> User 1503960366 has a fat percentage of 22 but with BMI of 22.64 and
> User 4319703577 has fat percentage of 25 with BMI of 27.45, so BMI may
> not be a clear indicator of health, since they do not take into
> account bone density, activity level and fat percentage.

9.  **Correlation Between Weight and Activity Levels:**

> I observed that some users with higher weights, like 8877689391, still
> maintained high activity levels, while others, like 1927972279, showed
> low activity. This indicates that weight alone does not determine
> fitness levels. I found that lighter users, such as 1503960366, tended
> to be more active, although this was not a strict rule. This
> variability highlights the influence of motivation and lifestyle on
> activity levels. (Fig 1.4)
>
> ![](./image5.png){width="6.268055555555556in"
> height="4.6402777777777775in"}
>
> **Fig 1.4**

**[ACT]**

**1. Understanding User Activity and Health Trends**

-   **Steps and Calories**: On average, users take around 7,637 steps
    per day, which is a bit below the recommended 10,000 steps. They
    burn around 2,300 calories. Bellabeat can help users get closer to
    their step goals by using the **Leaf** or **Time** tracker to send
    reminders or set personalized step targets. The **Bellabeat app**
    could also guide users on how to burn more calories based on their
    activity.

-   **User Segmentation**: I noticed three types of users:

    -   **Moderate Activity**: Most people fall into this group, walking
        between 5,000 and 10,000 steps.

    -   **Low Activity**: Some users take fewer than 5,000 steps, and
        they could use more motivation.

    -   **Highly Active**: A smaller group is very active, taking over
        10,000 steps daily.

> We can use this to personalize recommendations. For example, users
> with low activity can get simpler, achievable goals, while highly
> active users might appreciate more advanced workout ideas through the
> **Bellabeat app** or **Bellabeat membership**.

***2. Applying This to Bellabeat Products**

-   **Heart Rate Monitoring**: I looked at heart rate data and found
    that activity levels don't always match heart health. Bellabeat's
    **Leaf** and **Time** trackers can help by monitoring heart rate and
    giving feedback in the **Bellabeat app**. If users have high heart
    rates even with low activity, they could get tips on managing stress
    better.

-   **Sleep and Activity**: Sleep is another important area. On average,
    users sleep around 7 hours, which is slightly below the recommended
    amount. Bellabeat can use the **Leaf** and **Time** trackers to help
    users improve their sleep patterns. The **Bellabeat membership**
    could offer personalized sleep tips, like bedtime routines or
    relaxation techniques.

-   **Hydration**: The **Spring water bottle** tracks hydration, and
    based on what I found, it could remind users to stay hydrated,
    especially after periods of high activity. For instance, users who
    walk a lot or have higher heart rates might get reminders to drink
    more water.

**3. Improving Bellabeat's Marketing Strategy**

-   **Personalized Wellness**: We can use the data from the **Bellabeat
    app** to send users personalized health advice. For example, if a
    user has low activity and high stress, we could offer them
    mindfulness tips or suggest using the **Leaf** tracker for stress
    management. The **Bellabeat membership** can give users access to
    even more customized wellness plans.

-   **Focus on Holistic Health**: Bellabeat isn't just about counting
    steps---it's about tracking overall wellness, including sleep,
    stress, hydration, and menstrual cycles. We can highlight how
    Bellabeat takes a holistic approach to health in our marketing,
    which makes it a perfect fit for people looking for more than just a
    fitness tracker.

-   **Helping Low-Activity Users**: For users who aren't very active,
    Bellabeat can create campaigns that encourage them to start small.
    We could share easy workout ideas or send them reminders to take
    short walks. Offering simple health goals through the **Bellabeat
    membership** can motivate them to become more active.

-   **Engaging Active Users**: Highly active users might appreciate the
    extra insights that come with the **Bellabeat membership**, like
    personalized plans for better recovery or performance improvement.
    We could promote the membership as a way to take their fitness to
    the next level.

-   **Educational Content**: Lastly, we can create content that teaches
    users about the connections between sleep, stress, and activity. For
    example, blog posts or notifications in the app could explain how
    Bellabeat's products help manage stress and improve sleep,
    encouraging users to get the most out of their **Leaf** or **Time**
    tracker.
