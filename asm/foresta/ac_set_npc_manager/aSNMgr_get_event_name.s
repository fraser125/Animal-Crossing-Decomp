lbl_804980F8:
/* 804980F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804980FC  7C 08 02 A6 */	mflr r0
/* 80498100  90 01 00 24 */	stw r0, 0x24(r1)
/* 80498104  39 61 00 20 */	addi r11, r1, 0x20
/* 80498108  4B C0 2D CD */	bl func_8009AED4
/* 8049810C  7C 9E 23 78 */	mr r30, r4
/* 80498110  7C 7D 1B 78 */	mr r29, r3
/* 80498114  80 04 00 04 */	lwz r0, 4(r4)
/* 80498118  7C BF 2B 78 */	mr r31, r5
/* 8049811C  38 C0 FF FF */	li r6, -1
/* 80498120  2C 00 00 77 */	cmpwi r0, 0x77
/* 80498124  41 82 00 38 */	beq lbl_8049815C
/* 80498128  2C 00 00 03 */	cmpwi r0, 3
/* 8049812C  41 82 00 30 */	beq lbl_8049815C
/* 80498130  80 1E 00 08 */	lwz r0, 8(r30)
/* 80498134  2C 00 FF FF */	cmpwi r0, -1
/* 80498138  41 82 00 14 */	beq lbl_8049814C
/* 8049813C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80498140  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80498144  4B FF EF C9 */	bl aSNMgr_get_event_npc_idx
/* 80498148  7C 66 1B 78 */	mr r6, r3
lbl_8049814C:
/* 8049814C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80498150  7F A3 EB 78 */	mr r3, r29
/* 80498154  7F E5 FB 78 */	mr r5, r31
/* 80498158  4B F0 7D 89 */	bl mEvMN_GetEventNpcName
lbl_8049815C:
/* 8049815C  39 61 00 20 */	addi r11, r1, 0x20
/* 80498160  4B C0 2D C1 */	bl func_8009AF20
/* 80498164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80498168  7C 08 03 A6 */	mtlr r0
/* 8049816C  38 21 00 20 */	addi r1, r1, 0x20
/* 80498170  4E 80 00 20 */	blr 