lbl_805928E8:
/* 805928E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805928EC  7C 08 02 A6 */	mflr r0
/* 805928F0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805928F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805928F8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805928FC  3C A5 00 02 */	addis r5, r5, 2
/* 80592900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80592904  7C 7F 1B 78 */	mr r31, r3
/* 80592908  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8059290C  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80592910  7D 89 03 A6 */	mtctr r12
/* 80592914  4E 80 04 21 */	bctrl 
/* 80592918  88 1F 09 A0 */	lbz r0, 0x9a0(r31)
/* 8059291C  28 00 00 01 */	cmplwi r0, 1
/* 80592920  40 82 00 24 */	bne lbl_80592944
/* 80592924  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80592928  38 00 00 00 */	li r0, 0
/* 8059292C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80592930  7F E3 FB 78 */	mr r3, r31
/* 80592934  3C 84 00 02 */	addis r4, r4, 2
/* 80592938  80 84 60 D4 */	lwz r4, 0x60d4(r4)
/* 8059293C  90 04 00 08 */	stw r0, 8(r4)
/* 80592940  4B DE 1B 01 */	bl Actor_delete
lbl_80592944:
/* 80592944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059294C  7C 08 03 A6 */	mtlr r0
/* 80592950  38 21 00 10 */	addi r1, r1, 0x10
/* 80592954  4E 80 00 20 */	blr 
