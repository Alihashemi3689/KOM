# Mathematical Proof
A.B = (a<sub>h</sub>2<sup>128</sup>+a<sub>l</sub>)(b<sub>h</sub>2<sup>128</sup>+b<sub>l</sub>) = a<sub>h</sub>b<sub>h</sub>2<sup>256</sup> + (a<sub>l</sub>b<sub>h</sub> + a<sub>h</sub>b<sub>l</sub>)2<sup>128</sup> + a<sub>l</sub>b<sub>l</sub> = a<sub>h</sub>b<sub>h</sub>38 + [(a<sub>h</sub>+a<sub>l</sub>)(b<sub>h</sub>+b<sub>l</sub>) - a<sub>h</sub>b<sub>h</sub> - a<sub>l</sub>b<sub>l</sub>]2<sup>128</sup> + a<sub>l</sub>b<sub>l</sub> <br>

a<sub>h</sub>b<sub>h</sub> = a<sub>3</sub>b<sub>3</sub>2<sup>128</sup> + [(a<sub>3</sub>+a<sub>2</sub>)(b<sub>3</sub>+b<sub>2</sub>) - a<sub>3</sub>b<sub>3</sub> - a<sub>2</sub>b<sub>2</sub>]2<sup>64</sup> + a<sub>2</sub>b<sub>2</sub>  = [a<sub>3</sub>b<sub>3</sub>2<sup>64</sup> + (a<sub>3</sub>+a<sub>2</sub>)(b<sub>3</sub>+b<sub>2</sub>) - a<sub>3</sub>b<sub>3</sub> - a<sub>2</sub>b<sub>2</sub>]2<sup>64</sup> + a<sub>2</sub>b<sub>2</sub> <br>
a<sub>h</sub>b<sub>h</sub>38 = [a<sub>3</sub>b<sub>3</sub>2<sup>64</sup> + (a<sub>3</sub>+a<sub>2</sub>)(b<sub>3</sub>+b<sub>2</sub>) - a<sub>3</sub>b<sub>3</sub> - a<sub>2</sub>b<sub>2</sub>]2<sup>64</sup>.38 + a<sub>2</sub>b<sub>2</sub>38 <br>

a<sub>l</sub>b<sub>l</sub> = a<sub>1</sub>b<sub>1</sub>2<sup>128</sup> + [(a<sub>1</sub>+a<sub>0</sub>)(b<sub>1</sub>+b<sub>0</sub>) - a<sub>1</sub>b<sub>1</sub> - a<sub>0</sub>b<sub>0</sub>]2<sup>64</sup> + a<sub>0</sub>b<sub>0</sub> <br>

(a<sub>h</sub>+a<sub>l</sub>)(b<sub>h</sub>+b<sub>l</sub>) = ra<sub>h</sub>rb<sub>h</sub>2<sup>130</sup> + [(ra<sub>h</sub>+ra<sub>l</sub>)(rb<sub>h</sub>+rb<sub>l</sub>) - ra<sub>h</sub>rb<sub>h</sub> - ra<sub>l</sub>rb<sub>l</sub>]2<sup>65</sup> + ra<sub>l</sub>rb<sub>l</sub> <br>


# Results

FPGA Synthesis Results Of Ladder Step On  XC7Z020 Device ( speed grade : -1)

![image](https://github.com/user-attachments/assets/dc69d3e9-7d7f-425e-9b0d-5bbc08147174)

FPGA Synthesis Results Of Ladder Step On  XC7Z030 Device ( speed grade : -3)

![image](https://github.com/user-attachments/assets/4cafa900-6fd8-4814-bc8e-4dee99f4eaab)

comparison of different speed grades

![image](https://github.com/user-attachments/assets/d2d3995f-0d8b-485a-a981-43b71fd76546)
