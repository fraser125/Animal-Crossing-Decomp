lbl_80629FEC:
/* 80629FEC  38 00 00 00 */	li r0, 0
/* 80629FF0  3C 80 80 63 */	lis r4, trademark_init@ha /* 0x8062BDF0@ha */
/* 80629FF4  98 03 00 9F */	stb r0, 0x9f(r3)
/* 80629FF8  38 04 BD F0 */	addi r0, r4, trademark_init@l /* 0x8062BDF0@l */
/* 80629FFC  3C 80 00 02 */	lis r4, 0x0002 /* 0x00025A70@ha */
/* 8062A000  90 03 00 0C */	stw r0, 0xc(r3)
/* 8062A004  38 04 5A 70 */	addi r0, r4, 0x5A70 /* 0x00025A70@l */
/* 8062A008  90 03 00 10 */	stw r0, 0x10(r3)
/* 8062A00C  4E 80 00 20 */	blr 
