lbl_804009B4:
/* 804009B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804009B8  7C 08 02 A6 */	mflr r0
/* 804009BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804009C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804009C4  4B C9 A5 11 */	bl func_8009AED4
/* 804009C8  7C 7D 1B 78 */	mr r29, r3
/* 804009CC  38 00 00 01 */	li r0, 1
/* 804009D0  90 03 00 04 */	stw r0, 4(r3)
/* 804009D4  7C 9E 23 78 */	mr r30, r4
/* 804009D8  80 63 00 04 */	lwz r3, 4(r3)
/* 804009DC  4B FF 9A 7D */	bl mCD_get_size
/* 804009E0  90 7D 00 08 */	stw r3, 8(r29)
/* 804009E4  7F A3 EB 78 */	mr r3, r29
/* 804009E8  4B FF AE 81 */	bl mCD_get_this_land_slot_no_nes
/* 804009EC  2C 03 00 01 */	cmpwi r3, 1
/* 804009F0  40 82 00 54 */	bne lbl_80400A44
/* 804009F4  83 FD 00 00 */	lwz r31, 0(r29)
/* 804009F8  2C 1F FF FF */	cmpwi r31, -1
/* 804009FC  41 82 00 48 */	beq lbl_80400A44
/* 80400A00  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80400A04  7F E4 FB 78 */	mr r4, r31
/* 80400A08  4B FF AF 6D */	bl mCD_check_copyProtect
/* 80400A0C  2C 03 00 01 */	cmpwi r3, 1
/* 80400A10  40 82 00 24 */	bne lbl_80400A34
/* 80400A14  7F E0 F8 F8 */	nor r0, r31, r31
/* 80400A18  38 60 00 01 */	li r3, 1
/* 80400A1C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80400A20  90 1D 00 00 */	stw r0, 0(r29)
/* 80400A24  80 9E 00 00 */	lwz r4, 0(r30)
/* 80400A28  38 04 00 01 */	addi r0, r4, 1
/* 80400A2C  90 1E 00 00 */	stw r0, 0(r30)
/* 80400A30  48 00 00 4C */	b lbl_80400A7C
lbl_80400A34:
/* 80400A34  38 00 00 07 */	li r0, 7
/* 80400A38  38 60 FF FF */	li r3, -1
/* 80400A3C  90 1E 00 04 */	stw r0, 4(r30)
/* 80400A40  48 00 00 3C */	b lbl_80400A7C
lbl_80400A44:
/* 80400A44  80 7D 00 00 */	lwz r3, 0(r29)
/* 80400A48  38 00 00 16 */	li r0, 0x16
/* 80400A4C  2C 03 FF FF */	cmpwi r3, -1
/* 80400A50  90 1E 00 04 */	stw r0, 4(r30)
/* 80400A54  41 82 00 24 */	beq lbl_80400A78
/* 80400A58  1C 63 00 94 */	mulli r3, r3, 0x94
/* 80400A5C  38 03 00 CC */	addi r0, r3, 0xcc
/* 80400A60  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80400A64  2C 00 00 15 */	cmpwi r0, 0x15
/* 80400A68  41 82 00 0C */	beq lbl_80400A74
/* 80400A6C  2C 00 00 06 */	cmpwi r0, 6
/* 80400A70  40 82 00 08 */	bne lbl_80400A78
lbl_80400A74:
/* 80400A74  90 1E 00 04 */	stw r0, 4(r30)
lbl_80400A78:
/* 80400A78  38 60 FF FF */	li r3, -1
lbl_80400A7C:
/* 80400A7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80400A80  4B C9 A4 A1 */	bl func_8009AF20
/* 80400A84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80400A88  7C 08 03 A6 */	mtlr r0
/* 80400A8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80400A90  4E 80 00 20 */	blr 
