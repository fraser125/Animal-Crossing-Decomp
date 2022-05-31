lbl_80497F0C:
/* 80497F0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80497F10  7C 08 02 A6 */	mflr r0
/* 80497F14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80497F18  39 61 00 20 */	addi r11, r1, 0x20
/* 80497F1C  4B C0 2F B9 */	bl func_8009AED4
/* 80497F20  7C BF 2B 78 */	mr r31, r5
/* 80497F24  7C 7D 1B 78 */	mr r29, r3
/* 80497F28  7C 9E 23 78 */	mr r30, r4
/* 80497F2C  80 65 00 00 */	lwz r3, 0(r5)
/* 80497F30  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80497F34  7C C5 33 78 */	mr r5, r6
/* 80497F38  4B FF F1 D5 */	bl aSNMgr_get_event_npc_idx
/* 80497F3C  2C 03 FF FF */	cmpwi r3, -1
/* 80497F40  41 82 00 2C */	beq lbl_80497F6C
/* 80497F44  1C 63 00 0C */	mulli r3, r3, 0xc
/* 80497F48  38 00 00 00 */	li r0, 0
/* 80497F4C  7C 7F 1A 14 */	add r3, r31, r3
/* 80497F50  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80497F54  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80497F58  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80497F5C  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80497F60  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80497F64  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80497F68  98 1D 08 E8 */	stb r0, 0x8e8(r29)
lbl_80497F6C:
/* 80497F6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80497F70  4B C0 2F B1 */	bl func_8009AF20
/* 80497F74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80497F78  7C 08 03 A6 */	mtlr r0
/* 80497F7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80497F80  4E 80 00 20 */	blr 
