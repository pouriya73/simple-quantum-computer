operation CoinFlip (count: Int) : (Int, Int)
{
    body
    {
        mutable numOnes = 0;
        mutable numZeros = 0;
        using (qubit = Qubit[1]) {
        for (test in 1..count) {
            Set (Zero, qubit[0]);
            H(qubit[0]);
            let state = M(qubit[0]);
            if (state == Zero) {
                set numZeros = numZeros + 1;
            }
            if (state == One) {
                set numOnes = numOnes + 1;
            }
      }
      ResetAll(qubit);
    }
    return (numZeros, numOnes);
    }
}
