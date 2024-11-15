/**
 * SPECS TL;DR
 *
 * Produce Energon at the start of each week.
 *
 * Randomly generate the costs
 * - to produce energon cubes
 * - to sell energon cubes
 * 
 * NOTE: Prices are influenced by a weekly trend.
 *
 * Track inventory and Energon balance.
 *
 * Sell cubes daily
 *
 * Recycle unsold cubes.
 *
 * Goal: Reach 1 million cubes in 10 weeks. Or just die a painful and poor
 *       death.
 */

/**
 * PROGRAM FLOW
 *
 * 1. Initialize game
 *    - Set Soundwave's energon to 10,000 and the week to 1.
 *
 * 2. Weekly Loop:
 *    - 10 iterations, one per week.
 *    - Get user input for number of stacks.
 *      - 1 Stack = 10 Energon
 *    - Track produced stacks.
 *    - Subtract production cost from Soundwave's energon.
 *    - Daily Loop:
 *      - Generate random price for cubes according to trend.
 *      - Allow user to choose to sell a stack.
 *    - Recycle cubes
 * 3. End game
 *    - After 10 Weeks.
 *    - If too poor.
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define TOTAL_WEEKS 10
#define ENERGON_GOAL 1000000
#define INITIAL_ENERGON 10000
#define STACK_SIZE 10

typedef struct {
        int selling_price;
        int cubes_sold;
} DailyData;

typedef struct {
        int production_cost;
        int trend;                  /* 0 = Scrap, 1 = Nominal, 2 = Primus */
        DailyData *daily_data;      /* Array of 7 days */
} WeekData;

typedef struct {
        int energon_balance;
        WeekData *weeks;            /* Array of 10 weeks */
} Game;

/* Initialize game start values */

/* Setup week */

/* Setup days */

/* Prompt to produce */

/* Prompt to sell */

/* Produce */

/* Sell */

/* Recycle */

/* Display summary */

/* Free memory heheh side project */

int main(void)
{
        srand(time(NULL));
        printf("Hello, World!\n");
        return 0;
}
