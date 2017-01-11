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


            two_neighbours_false: {
                title: "2 neighbours_false",
                input: 
                    [
                        [false, false, false], 
                        [true,  false, false], 
                        [false, false, true]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },
            two_neighbours_true: {
                title: "2 neighbours_true",
                input: 
                    [
                        [false, false, false], 
                        [true,  true,  false], 
                        [false, false, true]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, true,  false], 
                        [false, false, false]
                    ]
            },
            two_neighbours_true: {
                title: "3 neighbours_true",
                input: 
                    [
                        [false, false, true], 
                        [true,  true,  false], 
                        [false, false, true]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, true,  false], 
                        [false, false, false]
                    ]
            },
        }
end