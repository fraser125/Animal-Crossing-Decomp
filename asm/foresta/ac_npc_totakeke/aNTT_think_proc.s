lbl_805876A4:
/* 805876A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805876A8  7C 08 02 A6 */	mflr r0
/* 805876AC  2C 05 00 01 */	cmpwi r5, 1
/* 805876B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805876B4  41 82 00 1C */	beq lbl_805876D0
/* 805876B8  40 80 00 1C */	bge lbl_805876D4
/* 805876BC  2C 05 00 00 */	cmpwi r5, 0
/* 805876C0  40 80 00 08 */	bge lbl_805876C8
/* 805876C4  48 00 00 10 */	b lbl_805876D4
lbl_805876C8:
/* 805876C8  4B FF FF 09 */	bl aNTT_think_init_proc
/* 805876CC  48 00 00 08 */	b lbl_805876D4
lbl_805876D0:
/* 805876D0  4B FF FE C9 */	bl aNTT_think_main_proc
lbl_805876D4:
/* 805876D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805876D8  7C 08 03 A6 */	mtlr r0
/* 805876DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805876E0  4E 80 00 20 */	blr 
