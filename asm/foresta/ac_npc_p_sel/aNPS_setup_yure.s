lbl_80566BB0:
/* 80566BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566BB4  7C 08 02 A6 */	mflr r0
/* 80566BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566BC0  7C 7F 1B 78 */	mr r31, r3
/* 80566BC4  4B FF FE 65 */	bl aNPS_setup_yure_option
/* 80566BC8  2C 03 00 01 */	cmpwi r3, 1
/* 80566BCC  40 82 00 10 */	bne lbl_80566BDC
/* 80566BD0  7F E3 FB 78 */	mr r3, r31
/* 80566BD4  38 80 00 01 */	li r4, 1
/* 80566BD8  48 00 01 29 */	bl aNPS_change_talk_proc
lbl_80566BDC:
/* 80566BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566BE4  7C 08 03 A6 */	mtlr r0
/* 80566BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80566BEC  4E 80 00 20 */	blr 
