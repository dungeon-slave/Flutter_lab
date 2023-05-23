//import 'classA.dart';

void main(List<String> args) {
    print(getIncreasingSubsequence([7, 7, 7, 7, 7, 7, 7]));
}

int getIncreasingSubsequence(List<int> sequence)
{
    if (!checkConstraints(sequence)) {
        return -1;
    }

    int pos = 0;
    List<int> subSequence = [sequence[pos]];
    List<int> longerPart = [];

    while (pos != sequence.length - 1) {
        int currElement = sequence[++pos];

        if (currElement > subSequence[subSequence.length - 1]) {
            subSequence.add(currElement);
            if (longerPart.isNotEmpty) {
                longerPart.clear();
            }
        }
        else {
            if (longerPart.isEmpty) {
                longerPart.add(currElement);
            }
            else {
                if (currElement > longerPart[0]) {
                    longerPart.add(currElement);
                    subSequence.removeLast();
                    subSequence.addAll(longerPart);
                    longerPart.clear();
                }
                else {
                    longerPart[0] = currElement;
                }
            }
        }
    }

    return subSequence.length;
}

bool checkConstraints(List<int> nums)
{
    if (nums.length >= 1 && nums.length <= 2500) 
    {
        for (var i = 0; i < nums.length; i++) {
            if (!(nums[i] >= -104 && nums[i] <= 104)) {
                return false;
            }
        }
        return true;
    }
    else
    {
        return false;
    }
}

// class A
// {
//     String _name = "Matvey";
//     int getName()
//     {
//         return 1;
//     }
    
//     int getName(int a)
//     {
//         return 1;
//     }
// }

// class B 
// {
//     A obj = new A();

//     String _myname = "";

//     void getName()
//     {
//         _myname = obj._name;
//         print(_myname);
//     }
// }

// B objB = new B();
// objB.getName();
