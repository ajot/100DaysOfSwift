#  Day 2

Had to google to find out how to do type annotations for arrays. It's basically the same format as a string.
So, instead of typing - 
```var name: String = "who"```

for arrays we will do - 

```var names: [String] = ["foo","bar"]```

As for Sets, not quite sure why we would need them, what's the use case to store values in a random order. How would we retrieve them, if we can't use arr[index] format. Actually let me try that a couple times to see what happens. Ah, it turns out you can't use the arr[index] format at all for a set. So, how do we retrieve values from a set? I guess we will see later.

Aha, found the answer in the next exercise. You should use sets if you quickly want to find out if a value exists in a given "set" of values. The order does not matter, you need the values to be unique, and you are not even trying to retrieve them I guess, you should use sets.

As for Tuples, you can't add or remove items to a tuple, and you can't change the type of items in a tuple. So, I can't do this

```myName = (first:"Foo",last:"bar",age:35,gender:"m") for the code above.```

Okay, so it looks like Dictionaries are a combination of Tuples, and arrays.

What's the difference between associated values and raw values?
Associated values attach extra data to an enum case; raw values are underlying data types for each case.


### Found a bug?
The explanation for Option 1 I think is wrong in the evaluation [question](https://www.hackingwithswift.com/review/sixty/dictionaries). This would not create a tuple. It infact throws an error - 

```let location = ("road": "Park Lane", "city": "Cardiff")```

This, instead would create a tuple - 

```let location = (road: "Park Lane", city: "Cardiff")``` 


