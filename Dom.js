const btn = document.getElementById("btn")
const heading = document.querySelector("h1")

btn.addEventListener("click", (e) => {
    heading.innerText = "Hello silicon University";
    heading.style.color = "red";
})

const btn2 = document.getElementById("btn2");
const input = document.getElementById("txt");
const output = document.getElementById("output");
btn2.addEventListener("click", (e) => {
    output.innerHTML = `<h1>${input.value}</h1>`
})

const btn3 = document.getElementById("btn3")
const first = document.getElementById("first")
const second = document.getElementById("second")
const result = document.querySelector("#res")
btn3.addEventListener("click", (e) => {
    let a = parseInt(first.value);
    let b = parseInt(second.value);
    sum = a + b;
    result.innerText = `${sum}`;
})



const select = document.querySelector("#color");
const body = document.body;

select.addEventListener("change", (e) => {
    const chosenColor = e.target.value;
    if (chosenColor === "none") {
        body.style.backgroundColor = "black";
    } else {
        body.style.backgroundColor = chosenColor;
    }
});

let list=document.querySelectorAll("li");

for(let i=0;i<list.length;i++){
    list[2].innerText="Apple";
}

const one=document.querySelector("#one");
const two=document.querySelector("#two");
const three=document.querySelector("#three");
const four=document.querySelector("#four");

one.addEventListener("click",(e)=>{
    body.style.backgroundColor="green";
})
two.addEventListener("click",(e)=>{
    body.style.backgroundColor="red";
})
three.addEventListener("click",(e)=>{
    body.style.backgroundColor="blue";
})
four.addEventListener("click",(e)=>{
    body.style.backgroundColor="pink";
})