lbl_8058CF40:
/* 8058CF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CF44  7C 08 02 A6 */	mflr r0
/* 8058CF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CF4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058CF50  7C 7F 1B 78 */	mr r31, r3
/* 8058CF54  38 60 00 0F */	li r3, 0xf
/* 8058CF58  93 C1 00 08 */	stw r30, 8(r1)
/* 8058CF5C  7C 9E 23 78 */	mr r30, r4
/* 8058CF60  38 80 00 08 */	li r4, 8
/* 8058CF64  4B E1 0E 69 */	bl mEv_get_save_area
/* 8058CF68  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8058CF6C  38 A0 00 20 */	li r5, 0x20
/* 8058CF70  A0 C3 00 02 */	lhz r6, 2(r3)
/* 8058CF74  3C 64 FF FF */	addis r3, r4, 0xffff
/* 8058CF78  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058CF7C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8058CF80  7C A0 00 30 */	slw r0, r5, r0
/* 8058CF84  7C C0 00 39 */	and. r0, r6, r0
/* 8058CF88  41 82 00 50 */	beq lbl_8058CFD8
/* 8058CF8C  38 00 00 05 */	li r0, 5
/* 8058CF90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058CF94  98 1F 09 AA */	stb r0, 0x9aa(r31)
/* 8058CF98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058CF9C  3C 83 00 02 */	addis r4, r3, 2
/* 8058CFA0  7F E3 FB 78 */	mr r3, r31
/* 8058CFA4  A0 BF 00 06 */	lhz r5, 6(r31)
/* 8058CFA8  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058CFAC  3C A5 FF FF */	addis r5, r5, 0xffff
/* 8058CFB0  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 8058CFB4  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 8058CFB8  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 8058CFBC  7D 89 03 A6 */	mtctr r12
/* 8058CFC0  4E 80 04 21 */	bctrl 
/* 8058CFC4  7F E3 FB 78 */	mr r3, r31
/* 8058CFC8  7F C4 F3 78 */	mr r4, r30
/* 8058CFCC  38 A0 00 01 */	li r5, 1
/* 8058CFD0  48 00 05 4D */	bl aTKN1_setup_think_proc
/* 8058CFD4  48 00 00 1C */	b lbl_8058CFF0
lbl_8058CFD8:
/* 8058CFD8  54 C0 06 75 */	rlwinm. r0, r6, 0, 0x19, 0x1a
/* 8058CFDC  41 82 00 14 */	beq lbl_8058CFF0
/* 8058CFE0  7F E3 FB 78 */	mr r3, r31
/* 8058CFE4  7F C4 F3 78 */	mr r4, r30
/* 8058CFE8  38 A0 00 16 */	li r5, 0x16
/* 8058CFEC  48 00 05 31 */	bl aTKN1_setup_think_proc
lbl_8058CFF0:
/* 8058CFF0  A0 7F 00 06 */	lhz r3, 6(r31)
/* 8058CFF4  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058CFF8  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058CFFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8058D000  41 82 00 18 */	beq lbl_8058D018
/* 8058D004  7F E3 FB 78 */	mr r3, r31
/* 8058D008  38 BF 00 28 */	addi r5, r31, 0x28
/* 8058D00C  38 80 00 2F */	li r4, 0x2f
/* 8058D010  48 0A 0F 35 */	bl sAdo_OngenPos
/* 8058D014  48 00 00 14 */	b lbl_8058D028
lbl_8058D018:
/* 8058D018  7F E3 FB 78 */	mr r3, r31
/* 8058D01C  38 BF 00 28 */	addi r5, r31, 0x28
/* 8058D020  38 80 00 31 */	li r4, 0x31
/* 8058D024  48 0A 0F 21 */	bl sAdo_OngenPos
lbl_8058D028:
/* 8058D028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D02C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D030  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058D034  7C 08 03 A6 */	mtlr r0
/* 8058D038  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D03C  4E 80 00 20 */	blr 
