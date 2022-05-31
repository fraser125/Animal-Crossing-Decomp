lbl_803C4D34:
/* 803C4D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4D38  7C 08 02 A6 */	mflr r0
/* 803C4D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4D44  7C 9F 23 78 */	mr r31, r4
/* 803C4D48  93 C1 00 08 */	stw r30, 8(r1)
/* 803C4D4C  7C 7E 1B 78 */	mr r30, r3
/* 803C4D50  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C4D54  80 04 00 00 */	lwz r0, 0(r4)
/* 803C4D58  38 63 00 20 */	addi r3, r3, 0x20
/* 803C4D5C  7C A3 02 14 */	add r5, r3, r0
/* 803C4D60  88 85 00 02 */	lbz r4, 2(r5)
/* 803C4D64  88 C5 00 03 */	lbz r6, 3(r5)
/* 803C4D68  88 65 00 04 */	lbz r3, 4(r5)
/* 803C4D6C  50 86 44 2E */	rlwimi r6, r4, 8, 0x10, 0x17
/* 803C4D70  88 05 00 05 */	lbz r0, 5(r5)
/* 803C4D74  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 803C4D78  7C 66 00 50 */	subf r3, r6, r0
/* 803C4D7C  38 03 00 01 */	addi r0, r3, 1
/* 803C4D80  7C C3 07 34 */	extsh r3, r6
/* 803C4D84  7C 04 07 34 */	extsh r4, r0
/* 803C4D88  4B FF 60 C1 */	bl get_random_timer
/* 803C4D8C  7C 64 07 34 */	extsh r4, r3
/* 803C4D90  7F C3 F3 78 */	mr r3, r30
/* 803C4D94  4B FF B2 31 */	bl mMsg_Set_continue_msg_num
/* 803C4D98  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C4D9C  7F C3 F3 78 */	mr r3, r30
/* 803C4DA0  4B FF B2 A9 */	bl func_803C0048
/* 803C4DA4  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4DA8  7C 00 1A 14 */	add r0, r0, r3
/* 803C4DAC  38 60 00 00 */	li r3, 0
/* 803C4DB0  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4DB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C4DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4DC0  7C 08 03 A6 */	mtlr r0
/* 803C4DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4DC8  4E 80 00 20 */	blr 
