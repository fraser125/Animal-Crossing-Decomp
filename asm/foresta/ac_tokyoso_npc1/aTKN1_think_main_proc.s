lbl_8058D338:
/* 8058D338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058D33C  7C 08 02 A6 */	mflr r0
/* 8058D340  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058D344  39 61 00 30 */	addi r11, r1, 0x30
/* 8058D348  4B B0 DB 8D */	bl func_8009AED4
/* 8058D34C  7C 60 1B 78 */	mr r0, r3
/* 8058D350  7C 9D 23 78 */	mr r29, r4
/* 8058D354  7C 1E 03 78 */	mr r30, r0
/* 8058D358  38 60 00 07 */	li r3, 7
/* 8058D35C  7C 1F 03 78 */	mr r31, r0
/* 8058D360  7F C4 F3 78 */	mr r4, r30
/* 8058D364  4B E0 CF 01 */	bl mDemo_Check
/* 8058D368  2C 03 00 01 */	cmpwi r3, 1
/* 8058D36C  41 82 01 40 */	beq lbl_8058D4AC
/* 8058D370  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8058D374  28 00 00 FF */	cmplwi r0, 0xff
/* 8058D378  40 82 00 10 */	bne lbl_8058D388
/* 8058D37C  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8058D380  60 00 00 03 */	ori r0, r0, 3
/* 8058D384  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_8058D388:
/* 8058D388  88 7F 09 A8 */	lbz r3, 0x9a8(r31)
/* 8058D38C  28 03 00 0B */	cmplwi r3, 0xb
/* 8058D390  40 82 00 24 */	bne lbl_8058D3B4
/* 8058D394  C0 1F 09 9C */	lfs f0, 0x99c(r31)
/* 8058D398  7F E3 FB 78 */	mr r3, r31
/* 8058D39C  7F A4 EB 78 */	mr r4, r29
/* 8058D3A0  D0 1F 08 F8 */	stfs f0, 0x8f8(r31)
/* 8058D3A4  81 9F 09 94 */	lwz r12, 0x994(r31)
/* 8058D3A8  7D 89 03 A6 */	mtctr r12
/* 8058D3AC  4E 80 04 21 */	bctrl 
/* 8058D3B0  48 00 00 4C */	b lbl_8058D3FC
lbl_8058D3B4:
/* 8058D3B4  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8058D3B8  28 00 00 FF */	cmplwi r0, 0xff
/* 8058D3BC  40 82 00 1C */	bne lbl_8058D3D8
/* 8058D3C0  81 9F 09 94 */	lwz r12, 0x994(r31)
/* 8058D3C4  7F E3 FB 78 */	mr r3, r31
/* 8058D3C8  7F A4 EB 78 */	mr r4, r29
/* 8058D3CC  7D 89 03 A6 */	mtctr r12
/* 8058D3D0  4E 80 04 21 */	bctrl 
/* 8058D3D4  48 00 00 28 */	b lbl_8058D3FC
lbl_8058D3D8:
/* 8058D3D8  28 03 00 0C */	cmplwi r3, 0xc
/* 8058D3DC  41 82 00 0C */	beq lbl_8058D3E8
/* 8058D3E0  28 03 00 0D */	cmplwi r3, 0xd
/* 8058D3E4  40 82 00 18 */	bne lbl_8058D3FC
lbl_8058D3E8:
/* 8058D3E8  81 9F 09 94 */	lwz r12, 0x994(r31)
/* 8058D3EC  7F E3 FB 78 */	mr r3, r31
/* 8058D3F0  7F A4 EB 78 */	mr r4, r29
/* 8058D3F4  7D 89 03 A6 */	mtctr r12
/* 8058D3F8  4E 80 04 21 */	bctrl 
lbl_8058D3FC:
/* 8058D3FC  88 1F 09 A8 */	lbz r0, 0x9a8(r31)
/* 8058D400  28 00 00 0B */	cmplwi r0, 0xb
/* 8058D404  40 82 00 74 */	bne lbl_8058D478
/* 8058D408  4B AC F8 ED */	bl fqrand
/* 8058D40C  3C 60 80 65 */	lis r3, lit_620@ha /* 0x80649BB8@ha */
/* 8058D410  C0 03 9B B8 */	lfs f0, lit_620@l(r3)  /* 0x80649BB8@l */
/* 8058D414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058D418  40 80 00 60 */	bge lbl_8058D478
/* 8058D41C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8058D420  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058D424  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8058D428  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058D42C  3C 63 00 02 */	addis r3, r3, 2
/* 8058D430  7F A7 EB 78 */	mr r7, r29
/* 8058D434  90 81 00 08 */	stw r4, 8(r1)
/* 8058D438  38 81 00 08 */	addi r4, r1, 8
/* 8058D43C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8058D440  38 60 00 1F */	li r3, 0x1f
/* 8058D444  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058D448  38 A0 00 01 */	li r5, 1
/* 8058D44C  39 40 00 00 */	li r10, 0
/* 8058D450  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8058D454  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058D458  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 8058D45C  81 86 00 00 */	lwz r12, 0(r6)
/* 8058D460  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 8058D464  A8 DE 00 DE */	lha r6, 0xde(r30)
/* 8058D468  7C 09 07 34 */	extsh r9, r0
/* 8058D46C  A1 1E 00 06 */	lhz r8, 6(r30)
/* 8058D470  7D 89 03 A6 */	mtctr r12
/* 8058D474  4E 80 04 21 */	bctrl 
lbl_8058D478:
/* 8058D478  88 1F 09 AD */	lbz r0, 0x9ad(r31)
/* 8058D47C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8058D480  41 82 00 2C */	beq lbl_8058D4AC
/* 8058D484  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058D488  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058D48C  3C 63 00 02 */	addis r3, r3, 2
/* 8058D490  80 63 60 D8 */	lwz r3, 0x60d8(r3)
/* 8058D494  28 03 00 00 */	cmplwi r3, 0
/* 8058D498  41 82 00 14 */	beq lbl_8058D4AC
/* 8058D49C  81 83 00 08 */	lwz r12, 8(r3)
/* 8058D4A0  7F C3 F3 78 */	mr r3, r30
/* 8058D4A4  7D 89 03 A6 */	mtctr r12
/* 8058D4A8  4E 80 04 21 */	bctrl 
lbl_8058D4AC:
/* 8058D4AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8058D4B0  4B B0 DA 71 */	bl func_8009AF20
/* 8058D4B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058D4B8  7C 08 03 A6 */	mtlr r0
/* 8058D4BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8058D4C0  4E 80 00 20 */	blr 
