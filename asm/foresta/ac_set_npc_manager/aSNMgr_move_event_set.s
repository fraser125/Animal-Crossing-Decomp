lbl_80498074:
/* 80498074  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80498078  7C 08 02 A6 */	mflr r0
/* 8049807C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80498080  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80498084  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80498088  7C 7E 1B 78 */	mr r30, r3
/* 8049808C  3B FE 03 18 */	addi r31, r30, 0x318
/* 80498090  7F E3 FB 78 */	mr r3, r31
/* 80498094  4B FF FD A5 */	bl aSNMgr_set_event_info
/* 80498098  2C 03 00 01 */	cmpwi r3, 1
/* 8049809C  40 82 00 44 */	bne lbl_804980E0
/* 804980A0  80 7F 00 08 */	lwz r3, 8(r31)
/* 804980A4  2C 03 FF FF */	cmpwi r3, -1
/* 804980A8  41 82 00 38 */	beq lbl_804980E0
/* 804980AC  4B F0 74 9D */	bl mEvMN_GetEventBlockKind
/* 804980B0  7C 60 1B 78 */	mr r0, r3
/* 804980B4  38 61 00 0C */	addi r3, r1, 0xc
/* 804980B8  7C 05 03 78 */	mr r5, r0
/* 804980BC  38 81 00 08 */	addi r4, r1, 8
/* 804980C0  4B F0 E3 41 */	bl mFI_BlockKind2BkNum
/* 804980C4  80 7F 00 08 */	lwz r3, 8(r31)
/* 804980C8  4B F0 74 C9 */	bl mEvMN_GetJointNpcMax
/* 804980CC  90 7F 00 0C */	stw r3, 0xc(r31)
/* 804980D0  7F C3 F3 78 */	mr r3, r30
/* 804980D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804980D8  80 A1 00 08 */	lwz r5, 8(r1)
/* 804980DC  4B FF FE A9 */	bl aSNMgr_move_event_arrange
lbl_804980E0:
/* 804980E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804980E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804980E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804980EC  7C 08 03 A6 */	mtlr r0
/* 804980F0  38 21 00 20 */	addi r1, r1, 0x20
/* 804980F4  4E 80 00 20 */	blr 
