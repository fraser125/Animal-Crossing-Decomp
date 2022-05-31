lbl_803FEFF8:
/* 803FEFF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FEFFC  7C 08 02 A6 */	mflr r0
/* 803FF000  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FF004  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF008  4B C9 BE CD */	bl func_8009AED4
/* 803FF00C  7C 7D 1B 78 */	mr r29, r3
/* 803FF010  7C 9E 23 78 */	mr r30, r4
/* 803FF014  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 803FF018  3B E0 00 00 */	li r31, 0
/* 803FF01C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 803FF020  28 00 00 00 */	cmplwi r0, 0
/* 803FF024  41 82 00 AC */	beq lbl_803FF0D0
/* 803FF028  80 1D 01 64 */	lwz r0, 0x164(r29)
/* 803FF02C  28 00 00 00 */	cmplwi r0, 0
/* 803FF030  41 82 00 A0 */	beq lbl_803FF0D0
/* 803FF034  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803FF038  28 00 00 00 */	cmplwi r0, 0
/* 803FF03C  41 82 00 94 */	beq lbl_803FF0D0
/* 803FF040  2C 04 00 00 */	cmpwi r4, 0
/* 803FF044  41 82 00 0C */	beq lbl_803FF050
/* 803FF048  2C 04 00 02 */	cmpwi r4, 2
/* 803FF04C  40 82 00 14 */	bne lbl_803FF060
lbl_803FF050:
/* 803FF050  38 00 00 04 */	li r0, 4
/* 803FF054  3B E0 00 01 */	li r31, 1
/* 803FF058  90 1E 00 00 */	stw r0, 0(r30)
/* 803FF05C  48 00 00 78 */	b lbl_803FF0D4
lbl_803FF060:
/* 803FF060  4B FF C7 2D */	bl mCD_get_this_land_slot_no_game_start
/* 803FF064  2C 03 00 01 */	cmpwi r3, 1
/* 803FF068  40 82 00 58 */	bne lbl_803FF0C0
/* 803FF06C  83 FD 00 00 */	lwz r31, 0(r29)
/* 803FF070  2C 1F FF FF */	cmpwi r31, -1
/* 803FF074  41 82 00 44 */	beq lbl_803FF0B8
/* 803FF078  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 803FF07C  7F E4 FB 78 */	mr r4, r31
/* 803FF080  4B FF C8 F5 */	bl mCD_check_copyProtect
/* 803FF084  2C 03 00 01 */	cmpwi r3, 1
/* 803FF088  40 82 00 18 */	bne lbl_803FF0A0
/* 803FF08C  80 7E 00 00 */	lwz r3, 0(r30)
/* 803FF090  3B E0 00 01 */	li r31, 1
/* 803FF094  38 03 00 01 */	addi r0, r3, 1
/* 803FF098  90 1E 00 00 */	stw r0, 0(r30)
/* 803FF09C  48 00 00 38 */	b lbl_803FF0D4
lbl_803FF0A0:
/* 803FF0A0  1C 1F 00 94 */	mulli r0, r31, 0x94
/* 803FF0A4  38 80 00 07 */	li r4, 7
/* 803FF0A8  3B E0 FF FF */	li r31, -1
/* 803FF0AC  7C 7D 02 14 */	add r3, r29, r0
/* 803FF0B0  90 83 00 CC */	stw r4, 0xcc(r3)
/* 803FF0B4  48 00 00 20 */	b lbl_803FF0D4
lbl_803FF0B8:
/* 803FF0B8  3B E0 FF FF */	li r31, -1
/* 803FF0BC  48 00 00 18 */	b lbl_803FF0D4
lbl_803FF0C0:
/* 803FF0C0  2C 03 00 00 */	cmpwi r3, 0
/* 803FF0C4  41 82 00 10 */	beq lbl_803FF0D4
/* 803FF0C8  3B E0 FF FF */	li r31, -1
/* 803FF0CC  48 00 00 08 */	b lbl_803FF0D4
lbl_803FF0D0:
/* 803FF0D0  3B E0 FF FF */	li r31, -1
lbl_803FF0D4:
/* 803FF0D4  7F E3 FB 78 */	mr r3, r31
/* 803FF0D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF0DC  4B C9 BE 45 */	bl func_8009AF20
/* 803FF0E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FF0E4  7C 08 03 A6 */	mtlr r0
/* 803FF0E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803FF0EC  4E 80 00 20 */	blr 
