let marks = 90;
if (marks > 90) {
    console.log("A Grade");
}
else if (marks > 75) {
    console.log("B Grade");
}
else if(marks>50){
    console.log("C Grade")
}
else if(marks<50){
    console.log("Fail")
}

let fact=1;
function factorial(num){
    for (let i = 1; i < num; i++) {
        fact*=i;
    }
    return fact;
}

console.log(factorial(7));

let rev=0;
let num=111;
let on=num;
while(num!=0){
    let n1=num%10;
    rev=(rev*10)+n1;
    num=Math.floor(num/10);
}

if(on==rev){
    console.log("Palindrome number");
}
else{
    console.log("Not a palindrome number");
}
let sum=0;
let avg;
let a=[1,2,3,4,5];
let max=a[0];
let sec_max=a[1];
let min=a[0];
for (let i = 0; i < a.length; i++) {
    sum+=a[i];
    avg=sum/a.length;
    if(max<a[i]){
        max=a[i];
    }
    if(min>a[i]){
        min=a[i];
    }
}
console.log("sum:"+sum); 
console.log("Average:"+avg); 
console.log("Largest no.:"+max);
console.log("smallest no.:"+min);

for (let i = 0; i < a.length; i++) {
   if(a[0]<a[1]){
    sec_max=a[1]
    max=a[0];
   }
    else if(sec_max>a[i]){
        sec_max=a[i]
    }
}
console.log("second max:",sec_max);

let arr1=[1,2,2,2,3,4,5,6,5,4];

let new_Arr=[...new Set(arr1)];
console.log(new_Arr)

function primecheck(num){
    for(let i=2;i<num;i++){
        if(num%i==0){
            return false;
        }
    }
    return true;
}

console.log(primecheck(7))


function countOccurrences(arr) {
  let counts = {};

  for (let i = 0; i < arr.length; i++) {
    let element = arr[i];
    if (counts[element]) {
      counts[element] += 1;
    } else {
      counts[element] = 1;
    }
  }

  return counts;
}


let array = [1, 2, 2, 3, 4, 4, 4, 5];
let result = countOccurrences(array);
console.log(result);


function isPrime(num){
    let a=0;
    for(let i=2;i<num;i++){
        if(num%i==0){
            a=1;
            break;
        }
    }
    if(a==1){
        return false;
    }
    else{
        return true;
    }
}

if(isPrime(7)){
    console.log("It is a prime number");
}
else{
    console.log("It is not a prime number");
}


function checkArmstrong(num){
    let sum=0;
    let on=num;
    let i=0;
    while(num!=0){
        let n1=num%10;
        sum+=n1*n1*n1;
        num=Math.floor(num/10);
        i++;
    }
    if(on==sum){
        console.log("Armstrong number ");
    }
    else{
        console.log("It is not an Armstrong number");
    }
}

checkArmstrong(153);


function twoArray(odd_arr){
    let even_arr=[],odd_Arr=[];
    for(let i=0;i<odd_arr.length;i++){
        if(i%2!=0){
            even_arr.push(odd_arr[i]);
        }
        else{
            odd_Arr.push(odd_arr[i]);
        }
    }

    console.log("even array",even_arr);
    console.log("odd array",odd_Arr);
}

let odd_arr=[1,2,3,4,5,6,7,8,9,10];
twoArray(odd_arr)

function reverseArray(new_arr){
    for(let i=new_arr.length-1;i>=0;i--){
        console.log(new_arr[i]);
    }
}

let new_arr=[1,2,3,4,56];
reverseArray(new_arr)

// let arr=[1,2,3,4,5];
// let arr2=[7,6,5,4,3];
// for(let i=0;i<arr.length;i++){
//     console.log(arr[i])
// }
// console.log(arr)
// console.log(arr.concat(arr2))

// arr.filter((num)=>{//does not return any value
//     if(num>3){
//         console.log(num);
//     }
// })

// const sum=arr.reduce((acc,currval)=>{//it returns value
//     return acc+=currval;
// },0);
// console.log(sum);

// const new_array=arr.map((num)=>num/2);
// console.log(new_array)//it returns value

// function sumarray(arr){
//     const total=arr.reduce((acc,currval)=>{//it returns value
//     return acc*=currval;
// },1);
//     return total
// }
// console.log(sumarray(arr));



