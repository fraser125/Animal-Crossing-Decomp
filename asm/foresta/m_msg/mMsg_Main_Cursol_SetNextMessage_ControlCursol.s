lbl_803C3368:
/* 803C3368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C336C  7C 08 02 A6 */	mflr r0
/* 803C3370  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C3374  39 61 00 20 */	addi r11, r1, 0x20
/* 803C3378  4B CD 7B 59 */	bl func_8009AED0
/* 803C337C  7C 7C 1B 78 */	mr r28, r3
/* 803C3380  7C 9D 23 78 */	mr r29, r4
/* 803C3384  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C3388  7C BE 2B 78 */	mr r30, r5
/* 803C338C  3B E3 00 20 */	addi r31, r3, 0x20
/* 803C3390  4B FC 01 B1 */	bl func_80383540
/* 803C3394  4B FC 07 D9 */	bl mChoice_Get_ChoseNum
/* 803C3398  80 1D 00 00 */	lwz r0, 0(r29)
/* 803C339C  2C 1E 00 FF */	cmpwi r30, 0xff
/* 803C33A0  7C BF 02 14 */	add r5, r31, r0
/* 803C33A4  88 85 00 02 */	lbz r4, 2(r5)
/* 803C33A8  88 05 00 03 */	lbz r0, 3(r5)
/* 803C33AC  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 803C33B0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803C33B4  41 82 00 0C */	beq lbl_803C33C0
/* 803C33B8  7C 1E 18 00 */	cmpw r30, r3
/* 803C33BC  40 82 00 20 */	bne lbl_803C33DC
lbl_803C33C0:
/* 803C33C0  28 04 FF FF */	cmplwi r4, 0xffff
/* 803C33C4  41 82 00 10 */	beq lbl_803C33D4
/* 803C33C8  7F 83 E3 78 */	mr r3, r28
/* 803C33CC  4B FF CB F9 */	bl mMsg_Set_continue_msg_num
/* 803C33D0  48 00 00 0C */	b lbl_803C33DC
lbl_803C33D4:
/* 803C33D4  7F 83 E3 78 */	mr r3, r28
/* 803C33D8  4B FF D9 39 */	bl mMsg_Set_CancelNormalContinue
lbl_803C33DC:
/* 803C33DC  80 9D 00 00 */	lwz r4, 0(r29)
/* 803C33E0  7F 83 E3 78 */	mr r3, r28
/* 803C33E4  4B FF CC 65 */	bl func_803C0048
/* 803C33E8  80 1D 00 00 */	lwz r0, 0(r29)
/* 803C33EC  7C 00 1A 14 */	add r0, r0, r3
/* 803C33F0  38 60 00 00 */	li r3, 0
/* 803C33F4  90 1D 00 00 */	stw r0, 0(r29)
/* 803C33F8  39 61 00 20 */	addi r11, r1, 0x20
/* 803C33FC  4B CD 7B 21 */	bl func_8009AF1C
/* 803C3400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C3404  7C 08 03 A6 */	mtlr r0
/* 803C3408  38 21 00 20 */	addi r1, r1, 0x20
/* 803C340C  4E 80 00 20 */	blr 
