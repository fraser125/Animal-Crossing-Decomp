lbl_805100A0:
/* 805100A0  2C 07 00 00 */	cmpwi r7, 0
/* 805100A4  40 81 00 10 */	ble lbl_805100B4
/* 805100A8  38 04 FF E0 */	addi r0, r4, -32
/* 805100AC  90 03 00 00 */	stw r0, 0(r3)
/* 805100B0  4E 80 00 20 */	blr 
lbl_805100B4:
/* 805100B4  28 05 00 00 */	cmplwi r5, 0
/* 805100B8  4D 82 00 20 */	beqlr 
/* 805100BC  54 C4 08 3C */	slwi r4, r6, 1
/* 805100C0  38 04 01 E0 */	addi r0, r4, 0x1e0
/* 805100C4  7C 05 02 14 */	add r0, r5, r0
/* 805100C8  90 03 00 00 */	stw r0, 0(r3)
/* 805100CC  4E 80 00 20 */	blr 
