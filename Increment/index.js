
window.addEventListener('load', () => {
    const result = document.getElementsByClassName('result')[0]
    const decreaseButton = document.getElementsByClassName('decrease')[0]
    const increaseButton = document.getElementsByClassName('increase')[0]
    // create helper functions for getting text value and printing hello world at 6
    const getCurrentCountVal = () => {
        return parseInt(result.textContent)  
    }
    const increase = () => {
        const value = getCurrentCountVal()
        if(value >= 10) {
            return
        }
       // console.log('The current value is', value)
        result.textContent = parseInt(value) + 2
    }
    increaseButton.addEventListener('click', increase) 
   
    const decrease = () => {
        const value = getCurrentCountVal()
        if(value === 0) {
            console.log('The current value is', value) 
            return 
        }
        result.textContent = value - 2
    }
    decreaseButton.addEventListener('click', decrease) 
});