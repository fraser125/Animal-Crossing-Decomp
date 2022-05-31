lbl_80474D18:
/* 80474D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474D1C  7C 08 02 A6 */	mflr r0
/* 80474D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474D28  3B E4 1D EC */	addi r31, r4, 0x1dec
/* 80474D2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80474D30  7C 7E 1B 78 */	mr r30, r3
/* 80474D34  4B F2 56 05 */	bl mDemo_CheckDemo
/* 80474D38  2C 03 00 00 */	cmpwi r3, 0
/* 80474D3C  40 82 00 28 */	bne lbl_80474D64
/* 80474D40  7F E3 FB 78 */	mr r3, r31
/* 80474D44  38 80 00 01 */	li r4, 1
/* 80474D48  38 A0 00 09 */	li r5, 9
/* 80474D4C  38 C0 00 00 */	li r6, 0
/* 80474D50  4B F7 A9 8D */	bl mSM_open_submenu
/* 80474D54  4B F0 E7 ED */	bl func_80383540
/* 80474D58  4B F0 EE 1D */	bl mChoice_Clear_ChoseNum
/* 80474D5C  38 00 00 0F */	li r0, 0xf
/* 80474D60  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_80474D64:
/* 80474D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474D68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474D6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80474D70  7C 08 03 A6 */	mtlr r0
/* 80474D74  38 21 00 10 */	addi r1, r1, 0x10
/* 80474D78  4E 80 00 20 */	blr 
