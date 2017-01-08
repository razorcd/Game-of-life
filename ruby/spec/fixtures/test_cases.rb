module TestCases
    CASES =
        {
            all_false: {
                title: "All false.",
                input: 
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },
            middle_true: {
                title: "Middle true",
                input: 
                    [
                        [false, false, false], 
                        [false, true,  false], 
                        [false, false, false]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },
        }
end