// How to use
// gcc suducu.c && ./a.out
// put your sudocu below. put 0 for unknown numbers.
#include<stdio.h>
char puzzle[9][9] = {
    {5,3,0,0,7,0,0,0,0},
    {6,0,0,1,9,5,0,0,0},
    {0,9,8,0,0,0,0,6,0},
    {8,0,0,0,6,0,0,0,3},
    {4,0,0,8,0,3,0,0,1},
    {7,0,0,0,2,0,0,0,6},
    {0,6,0,0,0,0,2,8,0},
    {0,0,0,4,1,9,0,0,5},
    {0,0,0,0,8,0,0,7,9}
};

void draw()
{
    // for(int temp = 0; temp <9*2+3; temp++)
    //     printf("-");
    // printf("\n");
    
    for (int i = 0; i < 9; i++){
        if (i%3 == 0){
            for(int temp = 0; temp <9*2+7; temp++){
                printf("-");       
            }
            printf("\n");
        }
        for (int j = 0; j < 9; j++){
            if (j%3 == 0){
                printf("| ");
            }
            printf("%d ",puzzle[i][j]);
        }
    printf("|\n");
    }   
    for(int temp = 0; temp <9*2+7; temp++)
        printf("-");
    printf("\n");
}
char find_free(int *x, int *y)
{
    // printf("I'm in find_free\n");
    // fflush(stdout);
    for (int i = 0; i < 9; i++)
        {
            for (int j = 0; j < 9; j++)
            {
                if (puzzle[i][j] == 0)
                {
                    *x = i;
                    *y = j;
                    // printf("    x = %d, y = %d\n", i , j);
                    // fflush(stdout);
                    return 1;
                }
            }
        }
    return 0;
}
char is_valid(int n, int x, int y)
{
    // printf("Is_valid n = %d for x = %d  y = %d\n",n,x,y);
    // fflush(stdout);
    for (int i = 0; i < 9; i++)
    {   
        // printf("checking i = %d",i);
        if (puzzle[x][i] == n || puzzle[i][y] == n)
        {
            // printf("        NOT_VALID!");
            // fflush(stdout);
            return 0;
        }
        // printf("    VALID.\n");
        // fflush(stdout);

    }
    int x_square = (x/3) * 3;
    int y_square = (y/3) * 3;
    // printf(" checking square x = %d, y = %d\n",x_square,y_square);
    // fflush(stdout);
    for (int i = x_square; i < (x_square + 3); i++)
    {
        for (int j = y_square; (j < y_square + 3); j++)
        {   
            // printf("        cell x = %d, y = %d\n",i,j);
            // fflush(stdout);
            if (puzzle[i][j] == n)
            {
                return 0;
            }
        }
    }
    // printf("        Valid!");
    // fflush(stdout);
    return 1;
}
int solve()
{
    // printf("I'm in solve\n");
    // fflush(stdout);
    int x, y;
    if (find_free(&x , &y) == 0)
    {
        return 1;
    }
    for (int i = 1; i <= 9; i++)
    {
        // printf("solving for %d\n",i);
        if (is_valid(i, x, y))
        {
            puzzle[x][y] = i;
            if (solve())
            {
                return 1;
            }
            puzzle[x][y] =0;
        }
    }
    fflush(stdout);
    return 0;
}

int main()
{
    // draw();
    // printf("\n");
    if (solve())
    {
        draw();
    }
    else
    {
        printf("I can't solve this ... \n");
    }
    return 0;
}
