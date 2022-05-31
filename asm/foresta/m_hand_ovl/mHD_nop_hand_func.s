lbl_805DF6BC:
/* 805DF6BC  3C A0 80 3C */	lis r5, none_proc1@ha /* 0x803BB54C@ha */
/* 805DF6C0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DF6C4  38 05 B5 4C */	addi r0, r5, none_proc1@l /* 0x803BB54C@l */
/* 805DF6C8  90 04 09 14 */	stw r0, 0x914(r4)
/* 805DF6CC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DF6D0  90 03 09 18 */	stw r0, 0x918(r3)
/* 805DF6D4  4E 80 00 20 */	blr 
