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
        For one output cycle two input cycles must execute.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

        In a ring counter there is only one 1 at a time and all ones would only 
        occur if it wasn't properly initialized and we didn't make one in the lab. 
        In a ripple counter it does not go to all 1s on the first clock cycle 
        because for the of three T-flip-flops there is a propagation delay before  
        they flip which means when the clock goes high it makes the first one 1 
        which then has a delay before triggering the next. It counts up one by 
        one which eventually leads it to go through seven clock cycles before the 
        output is all 1s (7 in decimal). 
 
### 3 - What width of ring counter would you use to get to an output of ~1KHz?

        To get an output of ~1KHz you would need a width of 50,000 if you have a 
        basyboard with a clock value of 100,000,000 Hz. Since 1 KHz = 1,000 Hz, 
        then 100,000,000/1,000 = 100,000 and since a divider has to have 2 * n
        input cycles to make a full output cycle you gotta divide 100,000 by 2
        making the width 50,000.
