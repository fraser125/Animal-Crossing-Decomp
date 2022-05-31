lbl_80546D2C:
/* 80546D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80546D30  7C 08 02 A6 */	mflr r0
/* 80546D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80546D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80546D3C  7C BF 2B 78 */	mr r31, r5
/* 80546D40  93 C1 00 08 */	stw r30, 8(r1)
/* 80546D44  7C 9E 23 78 */	mr r30, r4
/* 80546D48  7F E4 FB 78 */	mr r4, r31
/* 80546D4C  4B E7 92 79 */	bl mMsg_Set_continue_msg_num
/* 80546D50  93 FE 09 C4 */	stw r31, 0x9c4(r30)
/* 80546D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80546D5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80546D60  7C 08 03 A6 */	mtlr r0
/* 80546D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80546D68  4E 80 00 20 */	blr 
