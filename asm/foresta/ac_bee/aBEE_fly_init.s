// lbl_8050D68C:
/* 8050D68C  38 00 00 3C */	//li r0, 0x3c
/* 8050D690  90 03 04 48 */	//stw r0, 0x448(r3)
/* 8050D694  4E 80 00 20 */	//blr 

void lbl_8050D68C(int * ptr) {
     (* (ptr + (0x0112))) = 0x3C;
}
