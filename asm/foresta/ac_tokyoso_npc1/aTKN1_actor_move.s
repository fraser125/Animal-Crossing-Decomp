lbl_8058C368:
/* 8058C368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C36C  7C 08 02 A6 */	mflr r0
/* 8058C370  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C374  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C378  4B B0 EB 5D */	bl func_8009AED4
/* 8058C37C  7C 7D 1B 78 */	mr r29, r3
/* 8058C380  7C 9E 23 78 */	mr r30, r4
/* 8058C384  38 60 00 0F */	li r3, 0xf
/* 8058C388  38 80 00 08 */	li r4, 8
/* 8058C38C  4B E1 1A 41 */	bl mEv_get_save_area
/* 8058C390  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058C394  7C 7F 1B 78 */	mr r31, r3
/* 8058C398  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058C39C  7F A3 EB 78 */	mr r3, r29
/* 8058C3A0  3C A4 00 02 */	addis r5, r4, 2
/* 8058C3A4  7F C4 F3 78 */	mr r4, r30
/* 8058C3A8  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058C3AC  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8058C3B0  7D 89 03 A6 */	mtctr r12
/* 8058C3B4  4E 80 04 21 */	bctrl 
/* 8058C3B8  28 1F 00 00 */	cmplwi r31, 0
/* 8058C3BC  41 82 00 40 */	beq lbl_8058C3FC
/* 8058C3C0  88 1F 00 00 */	lbz r0, 0(r31)
/* 8058C3C4  28 00 00 03 */	cmplwi r0, 3
/* 8058C3C8  40 82 00 34 */	bne lbl_8058C3FC
/* 8058C3CC  A0 7D 00 06 */	lhz r3, 6(r29)
/* 8058C3D0  38 80 00 01 */	li r4, 1
/* 8058C3D4  A0 BF 00 02 */	lhz r5, 2(r31)
/* 8058C3D8  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058C3DC  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058C3E0  7C 83 00 30 */	slw r3, r4, r0
/* 8058C3E4  7C A0 18 39 */	and. r0, r5, r3
/* 8058C3E8  40 82 00 14 */	bne lbl_8058C3FC
/* 8058C3EC  7C A0 1B 78 */	or r0, r5, r3
/* 8058C3F0  7F A3 EB 78 */	mr r3, r29
/* 8058C3F4  B0 1F 00 02 */	sth r0, 2(r31)
/* 8058C3F8  4B DE 80 49 */	bl Actor_delete
lbl_8058C3FC:
/* 8058C3FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C400  4B B0 EB 21 */	bl func_8009AF20
/* 8058C404  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C408  7C 08 03 A6 */	mtlr r0
/* 8058C40C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C410  4E 80 00 20 */	blr 
