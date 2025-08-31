# Mathematical Proof
A.B = (a<sub>h</sub>2<sup>128</sup>+a<sub>l</sub>)(b<sub>h</sub>2<sup>128</sup>+b<sub>l</sub>) = a<sub>h</sub>b<sub>h</sub>2<sup>256</sup> + (a<sub>l</sub>b<sub>h</sub> + a<sub>h</sub>b<sub>l</sub>)2<sup>128</sup> + a<sub>l</sub>b<sub>l</sub> = a<sub>h</sub>b<sub>h</sub>38 + [(a<sub>h</sub>+a<sub>l</sub>)(b<sub>h</sub>+b<sub>l</sub>) - a<sub>h</sub>b<sub>h</sub> - a<sub>l</sub>b<sub>l</sub>]2<sup>128</sup> + a<sub>l</sub>b<sub>l</sub> <br>

a<sub>h</sub>b<sub>h</sub> = a<sub>3</sub>b<sub>3</sub>2<sup>128</sup> + [(a<sub>3</sub>+a<sub>2</sub>)(b<sub>3</sub>+b<sub>2</sub>) - a<sub>3</sub>b<sub>3</sub> - a<sub>2</sub>b<sub>2</sub>]2<sup>64</sup> + a<sub>2</sub>b<sub>2</sub>  = [a<sub>3</sub>b<sub>3</sub>2<sup>64</sup> + (a<sub>3</sub>+a<sub>2</sub>)(b<sub>3</sub>+b<sub>2</sub>) - a<sub>3</sub>b<sub>3</sub> - a<sub>2</sub>b<sub>2</sub>]2<sup>64</sup> + a<sub>2</sub>b<sub>2</sub> <br>
a<sub>h</sub>b<sub>h</sub>38 = [a<sub>3</sub>b<sub>3</sub>2<sup>64</sup> + (a<sub>3</sub>+a<sub>2</sub>)(b<sub>3</sub>+b<sub>2</sub>) - a<sub>3</sub>b<sub>3</sub> - a<sub>2</sub>b<sub>2</sub>]2<sup>64</sup>.38 + a<sub>2</sub>b<sub>2</sub>38 <br>

a<sub>l</sub>b<sub>l</sub> = a<sub>1</sub>b<sub>1</sub>2<sup>128</sup> + [(a<sub>1</sub>+a<sub>0</sub>)(b<sub>1</sub>+b<sub>0</sub>) - a<sub>1</sub>b<sub>1</sub> - a<sub>0</sub>b<sub>0</sub>]2<sup>64</sup> + a<sub>0</sub>b<sub>0</sub> = [a<sub>1</sub>b<sub>1</sub>2<sup>64</sup> + (a<sub>1</sub>+a<sub>0</sub>)(b<sub>1</sub>+b<sub>0</sub>) - a<sub>1</sub>b<sub>1</sub> - a<sub>0</sub>b<sub>0</sub>]2<sup>64</sup> + a<sub>0</sub>b<sub>0</sub>

(a<sub>h</sub>+a<sub>l</sub>)(b<sub>h</sub>+b<sub>l</sub>) = ra<sub>h</sub>rb<sub>h</sub>2<sup>128</sup> + [(ra<sub>h</sub>+ra<sub>l</sub>)(rb<sub>h</sub>+rb<sub>l</sub>) - ra<sub>h</sub>rb<sub>h</sub> - ra<sub>l</sub>rb<sub>l</sub>]2<sup>64</sup> + ra<sub>l</sub>rb<sub>l</sub> <br>
[(a<sub>h</sub>+a<sub>l</sub>)(b<sub>h</sub>+b<sub>l</sub>) - a<sub>h</sub>b<sub>h</sub> - a<sub>l</sub>b<sub>l</sub>]2<sup>128</sup> = ra<sub>h</sub>rb<sub>h</sub>2<sup>256</sup> + [(ra<sub>h</sub>+ra<sub>l</sub>)(rb<sub>h</sub>+rb<sub>l</sub>) - ra<sub>h</sub>rb<sub>h</sub> - ra<sub>l</sub>rb<sub>l</sub>]2<sup>192</sup> + ra<sub>l</sub>rb<sub>l</sub>2<sup>128</sup> - (a<sub>h</sub>b<sub>h</sub> + a<sub>l</sub>b<sub>l</sub>)2<sup>128</sup>

# Schematic
<img width="1118" height="1814" alt="2LevelKaratsuba drawio(1)" src="https://github.com/user-attachments/assets/a1823140-3bff-4c40-8037-e31a23bbd2cf" />



# Step_Ladder synthesis Results(XC7Z030-3 80MHZ)

## with DSP
<img width="593" height="244" alt="image" src="https://github.com/user-attachments/assets/8ced215f-4639-456c-b473-08771f4e9077" />

## without DSP
<img width="603" height="228" alt="image" src="https://github.com/user-attachments/assets/c37abc79-20f9-4659-8097-adf400dca1ec" />


