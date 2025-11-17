# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

        A modulo counter divides clocks by a 2 * Count because in the modulo
        counter the output is toggled every time the desired count is reached.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

        The ring counter's output goes to all 1s on the first clock cycle because 

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

        To get an output of ~1KHz you would need a width of 50,000 if you have a 
        basyboard with a clock value of 100,000,000 Hz. Since 1 KHz = 1,000 Hz, 
        then 100,000,000/1,000 = 100,000 and since a divider has to have 2 * n
        input cycles to make a full output cycle you gotta divide 100,000 by 2
        making the width 50,000.
        