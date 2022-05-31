lbl_8058F1F4:
/* 8058F1F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058F1F8  7C 08 02 A6 */	mflr r0
/* 8058F1FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058F200  39 61 00 20 */	addi r11, r1, 0x20
/* 8058F204  4B B0 BC D1 */	bl func_8009AED4
/* 8058F208  7C 7D 1B 78 */	mr r29, r3
/* 8058F20C  7C 9E 23 78 */	mr r30, r4
/* 8058F210  38 60 00 0E */	li r3, 0xe
/* 8058F214  38 80 00 09 */	li r4, 9
/* 8058F218  4B E0 EB B5 */	bl mEv_get_save_area
/* 8058F21C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058F220  7C 7F 1B 78 */	mr r31, r3
/* 8058F224  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058F228  7F A3 EB 78 */	mr r3, r29
/* 8058F22C  3C A4 00 02 */	addis r5, r4, 2
/* 8058F230  7F C4 F3 78 */	mr r4, r30
/* 8058F234  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058F238  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8058F23C  7D 89 03 A6 */	mtctr r12
/* 8058F240  4E 80 04 21 */	bctrl 
/* 8058F244  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8058F248  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 8058F24C  88 1D 09 A5 */	lbz r0, 0x9a5(r29)
/* 8058F250  28 00 00 00 */	cmplwi r0, 0
/* 8058F254  41 82 00 1C */	beq lbl_8058F270
/* 8058F258  28 1F 00 00 */	cmplwi r31, 0
/* 8058F25C  41 82 00 14 */	beq lbl_8058F270
/* 8058F260  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8058F264  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8058F268  EC 01 00 2A */	fadds f0, f1, f0
/* 8058F26C  D0 1D 00 28 */	stfs f0, 0x28(r29)
lbl_8058F270:
/* 8058F270  28 1F 00 00 */	cmplwi r31, 0
/* 8058F274  41 82 00 38 */	beq lbl_8058F2AC
/* 8058F278  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 8058F27C  2C 00 00 02 */	cmpwi r0, 2
/* 8058F280  40 82 00 2C */	bne lbl_8058F2AC
/* 8058F284  A0 7D 00 06 */	lhz r3, 6(r29)
/* 8058F288  38 80 00 01 */	li r4, 1
/* 8058F28C  A0 BF 00 12 */	lhz r5, 0x12(r31)
/* 8058F290  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058F294  38 03 2F A1 */	addi r0, r3, 0x2fa1
/* 8058F298  7C 80 00 30 */	slw r0, r4, r0
/* 8058F29C  7C A0 00 39 */	and. r0, r5, r0
/* 8058F2A0  40 82 00 0C */	bne lbl_8058F2AC
/* 8058F2A4  7F A3 EB 78 */	mr r3, r29
/* 8058F2A8  4B DE 51 99 */	bl Actor_delete
lbl_8058F2AC:
/* 8058F2AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058F2B0  4B B0 BC 71 */	bl func_8009AF20
/* 8058F2B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058F2B8  7C 08 03 A6 */	mtlr r0
/* 8058F2BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8058F2C0  4E 80 00 20 */	blr 
