let titles_type = ["Survey", "Review", "Overview"];
let titles_model = ["ViT", "MLP", "Transformer", "GPT", "Diffusion", "Segment Anything", "LLM", "GRPO", "DPO"];
let titles_method = ["Cross", "Domain", "Recommendation", "Large Language Model", "GPT", "Multi-scenario", "Multi-task", "Multi-modal", "Multi-behavior"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yongfeng Zhang", "Xiangyu Zhao", "Wenqi Fan"];

let conferences = [
    // AI
    "AAAI", "IJCAI",
    // DM
    "CIKM", "KDD", "RecSys", "WSDM", "WWW", "ICDE", "BigData",
    // IR
    "SIGIR",
    // ML
    "ACML", "ICLR", "ICML", "NeurIPS",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
