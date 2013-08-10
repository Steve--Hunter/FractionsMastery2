// Mimic a text file, by setting each row of an array to the csv string

// input: none
// ouput: none (uses global array text[i])

// Initialise array
var i;

for (i=0; i<=400; i+=1)
    {
    global.text_array[i]="";
    }
global.text_array[0]="0,0,1,1,1,2,000001000,0,0,1";
global.text_array[1]="1,1,1,1,2,2,000002000,0,0,1";
global.text_array[2]="2,2,1,1,3,2,000003000,0,0,1";
global.text_array[3]="3,3,1,1,4,2,000004000,0,0,1";
global.text_array[4]="4,4,1,1,5,2,000005000,0,0,1";
global.text_array[5]="5,5,1,2,1,2,000000004,0,0,2";
global.text_array[6]="6,6,1,2,2,2,000000003,0,0,2";
global.text_array[7]="7,7,1,2,3,2,000000004,0,0,2";
global.text_array[8]="8,8,1,2,4,2,000000005,0,0,2";
global.text_array[9]="9,9,1,2,5,2,000000006,0,0,2";
global.text_array[10]="10,10,1,3,1,2,000001002,1,1,4";
global.text_array[11]="11,11,1,3,2,2,000002004,1,1,4";
global.text_array[12]="12,12,1,3,3,2,000002003,1,1,4";
global.text_array[13]="13,13,1,3,4,2,000003005,1,1,4";
global.text_array[14]="14,14,1,3,5,2,000003010,1,1,4";
global.text_array[15]="15,15,1,4,1,2,000005004,2,1,4";
global.text_array[16]="16,16,1,4,2,2,000004003,2,1,4";
global.text_array[17]="17,17,1,4,3,2,000005002,2,1,4";
global.text_array[18]="18,18,1,4,4,2,000008007,2,1,4";
global.text_array[19]="19,19,1,4,5,2,000010009,2,1,4";
global.text_array[20]="20,20,1,5,1,2,001001002,3,2,5";
global.text_array[21]="21,21,1,5,2,2,002001004,3,2,5";
global.text_array[22]="22,22,1,5,3,2,003001003,3,2,5";
global.text_array[23]="23,23,1,5,4,2,004001005,3,2,5";
global.text_array[24]="24,24,1,5,5,2,002001010,3,2,5";
global.text_array[25]="25,25,2,1,1,2,000001002,4,1,4";
global.text_array[26]="26,26,2,1,2,2,000001004,4,1,4";
global.text_array[27]="27,27,2,1,3,2,000001003,4,1,4";
global.text_array[28]="28,28,2,1,4,2,000001005,4,1,4";
global.text_array[29]="29,29,2,1,5,2,000001008,4,1,4";
global.text_array[30]="30,30,2,2,1,2,000002003,4,1,4";
global.text_array[31]="31,31,2,2,2,2,000002005,4,1,4";
global.text_array[32]="32,32,2,2,3,2,000003005,4,1,4";
global.text_array[33]="33,33,2,2,4,2,000004005,4,1,4";
global.text_array[34]="34,34,2,2,5,2,000003007,4,1,4";
global.text_array[35]="35,35,2,3,1,2,000001010,4,1,4";
global.text_array[36]="36,36,2,3,2,2,000003010,4,1,4";
global.text_array[37]="37,37,2,3,3,2,000007010,4,1,4";
global.text_array[38]="38,38,2,3,4,2,000009010,4,1,4";
global.text_array[39]="39,39,2,3,5,2,000006010,4,1,4";
global.text_array[40]="40,40,2,4,1,2,000001010,4,1,4";
global.text_array[41]="41,41,2,4,2,2,000003010,4,1,4";
global.text_array[42]="42,42,2,4,3,2,000007010,4,1,4";
global.text_array[43]="43,43,2,4,4,2,000009010,4,1,4";
global.text_array[44]="44,44,2,4,5,2,000006010,4,1,4";
global.text_array[45]="45,45,2,5,1,2,000017100,4,1,4";
global.text_array[46]="46,46,2,5,2,2,000021100,4,1,4";
global.text_array[47]="47,47,2,5,3,2,000033100,4,1,4";
global.text_array[48]="48,48,2,5,4,2,000045100,4,1,4";
global.text_array[49]="49,49,2,5,5,2,000067100,4,1,4";
global.text_array[50]="50,50,3,1,1,2,001001003,5,2,5";
global.text_array[51]="51,51,3,1,2,2,001001004,5,2,5";
global.text_array[52]="52,52,3,1,3,2,001001005,5,2,5";
global.text_array[53]="53,53,3,1,4,2,001001006,5,2,5";
global.text_array[54]="54,54,3,1,5,2,001001007,5,2,5";
global.text_array[55]="55,55,3,2,1,2,002002003,5,2,5";
global.text_array[56]="56,56,3,2,2,2,002006007,5,2,5";
global.text_array[57]="57,57,3,2,3,2,005005009,5,2,5";
global.text_array[58]="58,58,3,2,4,2,005004007,5,2,5";
global.text_array[59]="59,59,3,2,5,2,004003008,5,2,5";
global.text_array[60]="60,60,3,3,1,2,000004003,6,1,4";
global.text_array[61]="61,61,3,3,2,2,000006005,6,1,4";
global.text_array[62]="62,62,3,3,3,2,000005004,6,1,4";
global.text_array[63]="63,63,3,3,4,2,000007006,6,1,4";
global.text_array[64]="64,64,3,3,5,2,000008007,6,1,4";
global.text_array[65]="65,65,3,4,1,2,000013005,6,1,4";
global.text_array[66]="66,66,3,4,2,2,000014005,6,1,4";
global.text_array[67]="67,67,3,4,3,2,000019008,6,1,4";
global.text_array[68]="68,68,3,4,4,2,000018007,6,1,4";
global.text_array[69]="69,69,3,4,5,2,000023009,6,1,4";
global.text_array[70]="70,70,3,5,1,2,000034007,6,1,4";
global.text_array[71]="71,71,3,5,2,2,000043008,6,1,4";
global.text_array[72]="72,72,3,5,3,2,000033005,6,1,4";
global.text_array[73]="73,73,3,5,4,2,000053007,6,1,4";
global.text_array[74]="74,74,3,5,5,2,000077009,6,1,4";
global.text_array[75]="75,75,4,1,1,2,000002000,7,0,1";
global.text_array[76]="76,76,4,1,2,2,000002000,7,0,1";
global.text_array[77]="77,77,4,1,3,2,000002000,7,0,1";
global.text_array[78]="78,78,4,1,4,2,000002000,7,0,1";
global.text_array[79]="79,79,4,1,5,2,000002000,7,0,1";
global.text_array[80]="80,80,4,2,1,2,000004000,7,0,1";
global.text_array[81]="81,81,4,2,2,2,000006000,7,0,1";
global.text_array[82]="82,82,4,2,3,2,000008000,7,0,1";
global.text_array[83]="83,83,4,2,4,2,000010000,7,0,1";
global.text_array[84]="84,84,4,2,5,2,000012000,7,0,1";
global.text_array[85]="85,85,4,3,1,2,000000010,7,0,2";
global.text_array[86]="86,86,4,3,2,2,000000018,7,0,2";
global.text_array[87]="87,87,4,3,3,2,000000014,7,0,2";
global.text_array[88]="88,88,4,3,4,2,000000022,7,0,2";
global.text_array[89]="89,89,4,3,5,2,000000016,7,0,2";
global.text_array[90]="90,90,4,4,1,2,000020000,7,0,1";
global.text_array[91]="91,91,4,4,2,2,000030000,7,0,1";
global.text_array[92]="92,92,4,4,3,2,000060000,7,0,1";
global.text_array[93]="93,93,4,4,4,2,000024000,7,0,1";
global.text_array[94]="94,94,4,4,5,2,000024000,7,0,1";
global.text_array[95]="95,95,4,5,1,2,000000015,7,0,2";
global.text_array[96]="96,96,4,5,2,2,000000070,7,0,2";
global.text_array[97]="97,97,4,5,3,2,000000055,7,0,2";
global.text_array[98]="98,98,4,5,4,2,000000048,7,0,2";
global.text_array[99]="99,99,4,5,5,2,000000056,7,0,2";
global.text_array[100]="100,100,4,6,1,2,000001000,8,0,1";
global.text_array[101]="101,101,4,6,2,2,000001000,8,0,1";
global.text_array[102]="102,102,4,6,3,2,000001000,8,0,1";
global.text_array[103]="103,103,4,6,4,2,000001000,8,0,1";
global.text_array[104]="104,104,4,6,5,2,000001000,8,0,1";
global.text_array[105]="105,105,4,7,1,2,000002000,8,0,1";
global.text_array[106]="106,106,4,7,2,2,000003000,8,0,1";
global.text_array[107]="107,107,4,7,3,2,000004000,8,0,1";
global.text_array[108]="108,108,4,7,4,2,000005000,8,0,1";
global.text_array[109]="109,109,4,7,5,2,000006000,8,0,1";
global.text_array[110]="110,110,4,8,1,2,000000005,8,0,2";
global.text_array[111]="111,111,4,8,2,2,000000009,8,0,2";
global.text_array[112]="112,112,4,8,3,2,000000007,8,0,2";
global.text_array[113]="113,113,4,8,4,2,000000011,8,0,2";
global.text_array[114]="114,114,4,8,5,2,000000008,8,0,2";
global.text_array[115]="115,115,4,9,1,2,000004000,8,0,1";
global.text_array[116]="116,116,4,9,2,2,000005000,8,0,1";
global.text_array[117]="117,117,4,9,3,2,000006000,8,0,1";
global.text_array[118]="118,118,4,9,4,2,000008000,8,0,1";
global.text_array[119]="119,119,4,9,5,2,000003000,8,0,1";
global.text_array[120]="120,120,4,10,1,2,000000005,8,0,2";
global.text_array[121]="121,121,4,10,2,2,000000007,8,0,2";
global.text_array[122]="122,122,4,10,3,2,000000011,8,0,2";
global.text_array[123]="123,123,4,10,4,2,000000012,8,0,2";
global.text_array[124]="124,124,4,10,5,2,000000008,8,0,2";
global.text_array[125]="125,125,5,1,1,2,000002003,9,1,4";
global.text_array[126]="126,126,5,1,2,2,000003004,9,1,4";
global.text_array[127]="127,127,5,1,3,2,000003005,9,1,4";
global.text_array[128]="128,128,5,1,4,2,000006007,9,1,4";
global.text_array[129]="129,129,5,1,5,2,000007008,9,1,4";
global.text_array[130]="130,130,5,2,1,2,000002005,9,1,4";
global.text_array[131]="131,131,5,2,2,2,000003005,9,1,4";
global.text_array[132]="132,132,5,2,3,2,000004007,9,1,4";
global.text_array[133]="133,133,5,2,4,2,000004009,9,1,4";
global.text_array[134]="134,134,5,2,5,2,000005008,9,1,4";
global.text_array[135]="135,135,5,3,1,2,000013020,9,1,4";
global.text_array[136]="136,136,5,3,2,2,000019020,9,1,4";
global.text_array[137]="137,137,5,3,3,2,000018025,9,1,4";
global.text_array[138]="138,138,5,3,4,2,000019030,9,1,4";
global.text_array[139]="139,139,5,3,5,2,000027043,9,1,4";
global.text_array[140]="140,140,5,4,1,2,000003029,9,1,4";
global.text_array[141]="141,141,5,4,2,2,000004063,9,1,4";
global.text_array[142]="142,142,5,4,3,2,000019099,9,1,4";
global.text_array[143]="143,143,5,4,4,2,000017045,9,1,4";
global.text_array[144]="144,144,5,4,5,2,000013020,9,1,4";
global.text_array[145]="145,145,5,5,1,2,000001002,10,1,4";
global.text_array[146]="146,146,5,5,2,2,000002005,10,1,4";
global.text_array[147]="147,147,5,5,3,2,000001002,10,1,4";
global.text_array[148]="148,148,5,5,4,2,000003004,10,1,4";
global.text_array[149]="149,149,5,5,5,2,000002003,10,1,4";
global.text_array[150]="150,150,5,6,1,2,000001002,10,1,4";
global.text_array[151]="151,151,5,6,2,2,000001003,10,1,4";
global.text_array[152]="152,152,5,6,3,2,000001003,10,1,4";
global.text_array[153]="153,153,5,6,4,2,000003005,10,1,4";
global.text_array[154]="154,154,5,6,5,2,000001003,10,1,4";
global.text_array[155]="155,155,5,7,1,2,001002005,11,2,5";
global.text_array[156]="156,156,5,7,2,2,001003007,11,2,5";
global.text_array[157]="157,157,5,7,3,2,001001009,11,2,5";
global.text_array[158]="158,158,5,7,4,2,001005008,11,2,5";
global.text_array[159]="159,159,5,7,5,2,001001006,11,2,5";
global.text_array[160]="160,160,5,8,1,2,001001005,11,2,5";
global.text_array[161]="161,161,5,8,2,2,001001007,11,2,5";
global.text_array[162]="162,162,5,8,3,2,001002009,11,2,5";
global.text_array[163]="163,163,5,8,4,2,001005008,11,2,5";
global.text_array[164]="164,164,5,8,5,2,001001006,11,2,5";
global.text_array[165]="165,165,5,9,1,2,004001005,11,2,5";
global.text_array[166]="166,166,5,9,2,2,002001003,11,2,5";
global.text_array[167]="167,167,5,9,3,2,002001004,11,2,5";
global.text_array[168]="168,168,5,9,4,2,002002005,11,2,5";
global.text_array[169]="169,169,5,9,5,2,002002007,11,2,5";
global.text_array[170]="170,170,5,10,1,2,001002003,12,2,5";
global.text_array[171]="171,171,5,10,2,2,001003005,12,2,5";
global.text_array[172]="172,172,5,10,3,2,001004007,12,2,5";
global.text_array[173]="173,173,5,10,4,2,001004009,12,2,5";
global.text_array[174]="174,174,5,10,5,2,002003005,12,2,5";
global.text_array[175]="175,175,6,1,1,2,000001006,13,1,4";
global.text_array[176]="176,176,6,1,2,2,000001009,13,1,4";
global.text_array[177]="177,177,6,1,3,2,000001004,13,1,4";
global.text_array[178]="178,178,6,1,4,2,000001008,13,1,4";
global.text_array[179]="179,179,6,1,5,2,000001009,13,1,4";
global.text_array[180]="180,180,6,2,1,2,000002015,13,1,4";
global.text_array[181]="181,181,6,2,2,2,000002015,13,1,4";
global.text_array[182]="182,182,6,2,3,2,000003020,13,1,4";
global.text_array[183]="183,183,6,2,4,2,000003020,13,1,4";
global.text_array[184]="184,184,6,2,5,2,000004021,13,1,4";
global.text_array[185]="185,185,6,3,1,2,000008015,13,1,4";
global.text_array[186]="186,186,6,3,2,2,000006035,13,1,4";
global.text_array[187]="187,187,6,3,3,2,000009020,13,1,4";
global.text_array[188]="188,188,6,3,4,2,000008015,13,1,4";
global.text_array[189]="189,189,6,3,5,2,000009020,13,1,4";
global.text_array[190]="190,190,6,4,1,2,000001002,14,1,4";
global.text_array[191]="191,191,6,4,2,2,000001003,14,1,4";
global.text_array[192]="192,192,6,4,3,2,000001004,14,1,4";
global.text_array[193]="193,193,6,4,4,2,000001003,14,1,4";
global.text_array[194]="194,194,6,4,5,2,000001003,14,1,4";
global.text_array[195]="195,195,6,5,1,2,000002005,14,1,4";
global.text_array[196]="196,196,6,5,2,2,000003005,14,1,4";
global.text_array[197]="197,197,6,5,3,2,000004005,14,1,4";
global.text_array[198]="198,198,6,5,4,2,000005008,14,1,4";
global.text_array[199]="199,199,6,5,5,2,000004009,14,1,4";
global.text_array[200]="200,200,7,1,1,2,000002003,15,1,4";
global.text_array[201]="201,201,7,1,2,2,000003005,15,1,4";
global.text_array[202]="202,202,7,1,3,2,000003004,15,1,4";
global.text_array[203]="203,203,7,1,4,2,000002005,15,1,4";
global.text_array[204]="204,204,7,1,5,2,000004005,15,1,4";
global.text_array[205]="205,205,7,2,1,2,000004005,15,1,4";
global.text_array[206]="206,206,7,2,2,2,000004007,15,1,4";
global.text_array[207]="207,207,7,2,3,2,000006007,15,1,4";
global.text_array[208]="208,208,7,2,4,2,000008009,15,1,4";
global.text_array[209]="209,209,7,2,5,2,000004009,15,1,4";
global.text_array[210]="210,210,7,3,1,2,001007018,16,2,5";
global.text_array[211]="211,211,7,3,2,2,001005016,16,2,5";
global.text_array[212]="212,212,7,3,3,2,001001027,16,2,5";
global.text_array[213]="213,213,7,3,4,2,001001014,16,2,5";
global.text_array[214]="214,214,7,3,5,2,001001015,16,2,5";
global.text_array[215]="215,215,7,4,1,2,000002003,17,1,4";
global.text_array[216]="216,216,7,4,2,2,000002005,17,1,4";
global.text_array[217]="217,217,7,4,3,2,000007009,17,1,4";
global.text_array[218]="218,218,7,4,4,2,000001002,17,1,4";
global.text_array[219]="219,219,7,4,5,2,000005006,17,1,4";
global.text_array[220]="220,220,7,5,1,2,001001005,17,2,5";
global.text_array[221]="221,221,7,5,2,2,001001009,17,2,5";
global.text_array[222]="222,222,7,5,3,2,001001003,17,2,5";
global.text_array[223]="223,223,7,5,4,2,002001007,17,2,5";
global.text_array[224]="224,224,7,5,5,2,001001004,17,2,5";
global.text_array[225]="225,225,8,1,1,2,020000000,18,0,3";
global.text_array[226]="226,226,8,1,2,2,012000000,18,0,3";
global.text_array[227]="227,227,8,1,3,2,040000000,18,0,3";
global.text_array[228]="228,228,8,1,4,2,012000000,18,0,3";
global.text_array[229]="229,229,8,1,5,2,024000000,18,0,3";
global.text_array[230]="230,230,8,2,1,2,000009014,19,1,4";
global.text_array[231]="231,231,8,2,2,2,000007012,19,1,4";
global.text_array[232]="232,232,8,2,3,2,000007010,19,1,4";
global.text_array[233]="233,233,8,2,4,2,000008015,19,1,4";
global.text_array[234]="234,234,8,2,5,2,000009020,19,1,4";
global.text_array[235]="235,235,8,3,1,2,000001020,19,1,4";
global.text_array[236]="236,236,8,3,2,2,000001012,19,1,4";
global.text_array[237]="237,237,8,3,3,2,000003010,19,1,4";
global.text_array[238]="238,238,8,3,4,2,000002015,19,1,4";
global.text_array[239]="239,239,8,3,5,2,000004021,19,1,4";
global.text_array[240]="240,240,8,4,1,2,000029035,19,1,4";
global.text_array[241]="241,241,8,4,2,2,000020021,19,1,4";
global.text_array[242]="242,242,8,4,3,2,000031035,19,1,4";
global.text_array[243]="243,243,8,4,4,2,000039040,19,1,4";
global.text_array[244]="244,244,8,4,5,2,000038045,19,1,4";
global.text_array[245]="245,245,8,5,1,2,000001035,19,1,4";
global.text_array[246]="246,246,8,5,2,2,000001021,19,1,4";
global.text_array[247]="247,247,8,5,3,2,000004015,19,1,4";
global.text_array[248]="248,248,8,5,4,2,000009040,19,1,4";
global.text_array[249]="249,249,8,5,5,2,000011035,19,1,4";
global.text_array[250]="250,250,8,6,1,2,000002003,20,1,4";
global.text_array[251]="251,251,8,6,2,2,000004009,20,1,4";
global.text_array[252]="252,252,8,6,3,2,000003008,20,1,4";
global.text_array[253]="253,253,8,6,4,2,000001002,20,1,4";
global.text_array[254]="254,254,8,6,5,2,000003004,20,1,4";
global.text_array[255]="255,255,8,7,1,2,000001003,20,1,4";
global.text_array[256]="256,256,8,7,2,2,000002009,20,1,4";
global.text_array[257]="257,257,8,7,3,2,000001006,20,1,4";
global.text_array[258]="258,258,8,7,4,2,000001004,20,1,4";
global.text_array[259]="259,259,8,7,5,2,000001002,20,1,4";
global.text_array[260]="260,260,8,8,1,2,001007015,21,2,5";
global.text_array[261]="261,261,8,8,2,2,001007020,21,2,5";
global.text_array[262]="262,262,8,8,3,2,001006035,21,2,5";
global.text_array[263]="263,263,8,8,4,2,001005012,21,2,5";
global.text_array[264]="264,264,8,8,5,2,001001035,21,2,5";
global.text_array[265]="265,265,8,9,1,2,004003020,22,2,5";
global.text_array[266]="266,266,8,9,2,2,003003020,22,2,5";
global.text_array[267]="267,267,8,9,3,2,002008015,22,2,5";
global.text_array[268]="268,268,8,9,4,2,003007020,22,2,5";
global.text_array[269]="269,269,8,9,5,2,002009010,22,2,5";
global.text_array[270]="270,270,8,10,1,2,001007020,22,2,5";
global.text_array[271]="271,271,8,10,2,2,001009020,22,2,5";
global.text_array[272]="272,272,8,10,3,2,001005012,22,2,5";
global.text_array[273]="273,273,8,10,4,2,001001015,22,2,5";
global.text_array[274]="274,274,8,10,5,2,001001021,22,2,5";
global.text_array[275]="275,275,9,1,1,2,000002005,23,1,4";
global.text_array[276]="276,276,9,1,2,2,000001005,23,1,4";
global.text_array[277]="277,277,9,1,3,2,000002007,23,1,4";
global.text_array[278]="278,278,9,1,4,2,000003007,23,1,4";
global.text_array[279]="279,279,9,1,5,2,000002005,23,1,4";
global.text_array[280]="280,280,9,2,1,2,000001006,23,1,4";
global.text_array[281]="281,281,9,2,2,2,000001008,23,1,4";
global.text_array[282]="282,282,9,2,3,2,000001006,23,1,4";
global.text_array[283]="283,283,9,2,4,2,000001008,23,1,4";
global.text_array[284]="284,284,9,2,5,2,000001004,23,1,4";
global.text_array[285]="285,285,9,3,1,2,000001002,24,1,4";
global.text_array[286]="286,286,9,3,2,2,000001003,24,1,4";
global.text_array[287]="287,287,9,3,3,2,000001005,24,1,4";
global.text_array[288]="288,288,9,3,4,2,000001004,24,1,4";
global.text_array[289]="289,289,9,3,5,2,000001003,24,1,4";
global.text_array[290]="290,290,9,4,1,2,000003004,24,1,4";
global.text_array[291]="291,291,9,4,2,2,000003005,24,1,4";
global.text_array[292]="292,292,9,4,3,2,000002005,24,1,4";
global.text_array[293]="293,293,9,4,4,2,000002003,24,1,4";
global.text_array[294]="294,294,9,4,5,2,000005008,24,1,4";
global.text_array[295]="295,295,9,5,1,2,000002003,24,1,4";
global.text_array[296]="296,296,9,5,2,2,000001003,24,1,4";
global.text_array[297]="297,297,9,5,3,2,000001002,24,1,4";
global.text_array[298]="298,298,9,5,4,2,000002003,24,1,4";
global.text_array[299]="299,299,9,5,5,2,000001003,24,1,4";
global.text_array[300]="300,300,9,6,1,2,000001024,25,1,4";
global.text_array[301]="301,301,9,6,2,2,000001030,25,1,4";
global.text_array[302]="302,302,9,6,3,2,000001040,25,1,4";
global.text_array[303]="303,303,9,6,4,2,000001012,25,1,4";
global.text_array[304]="304,304,9,6,5,2,000001060,25,1,4";
global.text_array[305]="305,305,9,7,1,2,000001005,26,1,4";
global.text_array[306]="306,306,9,7,2,2,000001007,26,1,4";
global.text_array[307]="307,307,9,7,3,2,000001005,26,1,4";
global.text_array[308]="308,308,9,7,4,2,000001005,26,1,4";
global.text_array[309]="309,309,9,7,5,2,000001007,26,1,4";
global.text_array[310]="310,310,9,8,1,2,000001002,26,1,4";
global.text_array[311]="311,311,9,8,2,2,000001002,26,1,4";
global.text_array[312]="312,312,9,8,3,2,000002005,26,1,4";
global.text_array[313]="313,313,9,8,4,2,000001003,26,1,4";
global.text_array[314]="314,314,9,8,5,2,000001005,26,1,4";
global.text_array[315]="315,315,9,9,1,2,002000000,27,0,3";
global.text_array[316]="316,316,9,9,2,2,002000000,27,0,3";
global.text_array[317]="317,317,9,9,3,2,002000000,27,0,3";
global.text_array[318]="318,318,9,9,4,2,002000000,27,0,3";
global.text_array[319]="319,319,9,9,5,2,002000000,27,0,3";
global.text_array[320]="320,320,9,10,1,2,006000000,27,0,3";
global.text_array[321]="321,321,9,10,2,2,006000000,27,0,3";
global.text_array[322]="322,322,9,10,3,2,006000000,27,0,3";
global.text_array[323]="323,323,9,10,4,2,004000000,27,0,3";
global.text_array[324]="324,324,9,10,5,2,007000000,27,0,3";
global.text_array[325]="325,325,10,1,1,2,000001012,28,1,4";
global.text_array[326]="326,326,10,1,2,2,000001030,28,1,4";
global.text_array[327]="327,327,10,1,3,2,000001064,28,1,4";
global.text_array[328]="328,328,10,1,4,2,000001020,28,1,4";
global.text_array[329]="329,329,10,1,5,2,000001035,28,1,4";
global.text_array[330]="330,330,10,2,1,2,000001006,29,1,4";
global.text_array[331]="331,331,10,2,2,2,000001002,29,1,4";
global.text_array[332]="332,332,10,2,3,2,000004005,29,1,4";
global.text_array[333]="333,333,10,2,4,2,000001002,29,1,4";
global.text_array[334]="334,334,10,2,5,2,000004007,29,1,4";
global.text_array[335]="335,335,10,3,1,2,001001003,30,2,5";
global.text_array[336]="336,336,10,3,2,2,001001002,30,2,5";
global.text_array[337]="337,337,10,3,3,2,002002003,30,2,5";
global.text_array[338]="338,338,10,3,4,2,001002005,30,2,5";
global.text_array[339]="339,339,10,3,5,2,001001003,30,2,5";
global.text_array[340]="340,340,10,4,1,2,004001002,31,2,5";
global.text_array[341]="341,341,10,4,2,2,002002003,31,2,5";
global.text_array[342]="342,342,10,4,3,2,003007009,31,2,5";
global.text_array[343]="343,343,10,4,4,2,005002005,31,2,5";
global.text_array[344]="344,344,10,4,5,2,003003004,31,2,5";
global.text_array[345]="345,345,10,5,1,2,001002005,31,2,5";
global.text_array[346]="346,346,10,5,2,2,002001002,31,2,5";
global.text_array[347]="347,347,10,5,3,2,004001002,31,2,5";
global.text_array[348]="348,348,10,5,4,2,001001002,31,2,5";
global.text_array[349]="349,349,10,5,5,2,001001009,31,2,5";




if global.Debug==2 // show text_array before shuffle
    {
    show_debug_message("global.text_array before shuffle");
    for (i=0; i<=349; i+=1)
        {
        show_debug_message("global.text_array["+string(i)+"]="+global.text_array[i]);
        }
    }
// Randomise  subquestion in each question
randomize();

var Q1,Q2,j,m,f; // used to swap strings when randomising

for (global.CurrentLevel=1; global.CurrentLevel<=10; global.CurrentLevel+=1)
    {
   for (global.CurrentQuestion=1; global.CurrentQuestion<=(global.QperLevel[global.CurrentLevel]); global.CurrentQuestion+=1)
       {
        global.CurrentSubQuestion=1;
        f=scGetIndex(); // first suq-question in block of 5
       for (global.CurrentSubQuestion=1; global.CurrentSubQuestion<=5; global.CurrentSubQuestion+=1) // Loop through the 5 sub questions swapping
            {
             m=scGetIndex();
             Q1=global.text_array[m]; // keep for swapping
             j=round(random_range(0, 4)); // pick row to swap with
             global.text_array[scGetIndex()]=global.text_array[(f+j)];
             global.text_array[f+j]=Q1;
           }
       }
      
    }

    
    if global.Debug==2 // show text_array after shuffle
    {
    show_debug_message("global.text_array after shuffle");
    for (i=0; i<=349; i+=1)
        {
        show_debug_message("global.text_array["+string(i)+"]="+global.text_array[i]);
        }
    }

// Create Skill Test level, selecting random questions from 10 levels

   if global.Debug==2 // show text_array before
    {
    show_debug_message("global.text_array Level 11 before filling");
    for (i=350; i<=380; i+=1)
        {
        show_debug_message("global.text_array["+string(i)+"]="+global.text_array[i]);
        }
    }

var n; 
n=350; // Start at end of level 10 questions, first Q of Level 11 (Skill Tester)

for (global.CurrentLevel=1; global.CurrentLevel<=10; global.CurrentLevel+=1)
    {
    for (m=1; m<=3; m+=1) // 3 Q per Level
        {
        global.CurrentQuestion=round(random_range(1,global.QperLevel[global.CurrentLevel])); 
        global.CurrentSubQuestion=round(random_range(1,5));
        global.text_array[n]=global.text_array[scGetIndex()];
        n+=1;
        }
    }

   if global.Debug==2 // show text_array after 
    {
    show_debug_message("global.text_array Level 11 after filling");
    for (i=350; i<=380; i+=1)
        {
        show_debug_message("global.text_array["+string(i)+"]="+global.text_array[i]);
        }
    }
if global.Debug show_debug_message("-- at end of scLoadArray");
