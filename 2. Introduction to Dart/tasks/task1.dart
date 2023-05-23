void main(List<String> args) {
    print(getCoinsCount([2, 1], 27));
}

int getCoinsCount(List<int> coins, int amount)
{
    if (!checkConstraints(coins, amount)) {
        return -1;
    }

    var coinsCount = 0;
    coins.sort();

    do {
        var currAmount = amount;

        for (var i = coins.length - 1; i >= 0; i--) {
            currAmount = amount - coins[i];
            if (currAmount >= 0) {
                coinsCount++;
                break;
            }
        }
        if (currAmount < 0) {
            return -1;
        }

        amount = currAmount;
    } while (amount > 0);

    return coinsCount;
}

bool checkConstraints(List<int> coins, int amount)
{
    if ((amount >= 0 && amount <= 104) && (coins.length >= 1 && coins.length <= 12)) 
    {
        for (var i = 0; i < coins.length; i++) {
            if (!(coins[i] >= 1 && coins[i] <= 230)) {
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
