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
                        [true,  false, false], 
                        [false, true,  false], 
                        [false, false, true]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, true,  false], 
                        [false, false, false]
                    ]
            },

            three_neighbours_false: {
                title: "3 neighbours_false",
                input: 
                    [
                        [false, false, true], 
                        [true,  false,  false], 
                        [false, false, true]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, false,  false], 
                        [false, false, false]
                    ]
            },
            three_neighbours_true: {
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


            four_neighbours_false: {
                title: "4 neighbours_false",
                input: 
                    [
                        [true,  false, true], 
                        [false, false, false], 
                        [true,  false, true]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },
            four_neighbours_true: {
                title: "4 neighbours_true",
                input: 
                    [
                        [true,  false, true], 
                        [false, true,  false], 
                        [true,  false, true]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },

            five_neighbours_false: {
                title: "5 neighbours_false",
                input: 
                    [
                        [true,  true, true], 
                        [false, false, false], 
                        [true,  false, true]
                    ],
                output:    
                    [
                        [false, true, false], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },
            five_neighbours_true: {
                title: "5 neighbours_true",
                input: 
                    [
                        [true,  true,  true], 
                        [false, true,  false], 
                        [true,  false, true]
                    ],
                output:    
                    [
                        [true,  true,  true], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },

            all_neighbours_false: {
                title: "all neighbours_false",
                input: 
                    [
                        [true, true,  true], 
                        [true, false, true], 
                        [true, true,  true]
                    ],
                output:    
                    [
                        [true,  false, true], 
                        [false, false, false], 
                        [true,  false, true]
                    ]
            },
            all_neighbours_true: {
                title: "all neighbours_true",
                input: 
                    [
                        [true, true, true], 
                        [true, true, true], 
                        [true, true, true]
                    ],
                output:    
                    [
                        [true,  false, true], 
                        [false, false, false], 
                        [true,  false, true]
                    ]
            },
        }
end