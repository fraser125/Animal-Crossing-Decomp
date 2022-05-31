lbl_805190AC:
/* 805190AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805190B0  7C 08 02 A6 */	mflr r0
/* 805190B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805190B8  4B FF F1 AD */	bl func_80518264
/* 805190BC  2C 03 00 00 */	cmpwi r3, 0
/* 805190C0  41 82 00 0C */	beq lbl_805190CC
/* 805190C4  38 60 10 EE */	li r3, 0x10ee
/* 805190C8  48 00 00 1C */	b lbl_805190E4
lbl_805190CC:
/* 805190CC  4B FF F4 75 */	bl entry_check
/* 805190D0  2C 03 00 00 */	cmpwi r3, 0
/* 805190D4  41 82 00 0C */	beq lbl_805190E0
/* 805190D8  38 60 10 EF */	li r3, 0x10ef
/* 805190DC  48 00 00 08 */	b lbl_805190E4
lbl_805190E0:
/* 805190E0  38 60 10 E8 */	li r3, 0x10e8
lbl_805190E4:
/* 805190E4  4B E7 F4 31 */	bl mDemo_Set_msg_num
/* 805190E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805190EC  7C 08 03 A6 */	mtlr r0
/* 805190F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805190F4  4E 80 00 20 */	blr 
