lbl_8061040C:
/* 8061040C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80610410  7C 08 02 A6 */	mflr r0
/* 80610414  90 01 00 44 */	stw r0, 0x44(r1)
/* 80610418  39 61 00 40 */	addi r11, r1, 0x40
/* 8061041C  4B A8 AA B1 */	bl func_8009AECC
/* 80610420  7C 7E 1B 78 */	mr r30, r3
/* 80610424  7C 9F 23 78 */	mr r31, r4
/* 80610428  A8 83 00 06 */	lha r4, 6(r3)
/* 8061042C  2C 04 08 45 */	cmpwi r4, 0x845
/* 80610430  41 80 00 78 */	blt lbl_806104A8
/* 80610434  2C 04 08 4D */	cmpwi r4, 0x84d
/* 80610438  41 81 00 70 */	bgt lbl_806104A8
/* 8061043C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80610440  38 04 F7 BB */	addi r0, r4, -2117
/* 80610444  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80610448  3B 80 00 00 */	li r28, 0
/* 8061044C  7C 1B 07 34 */	extsh r27, r0
/* 80610450  3F A3 00 02 */	addis r29, r3, 2
lbl_80610454:
/* 80610454  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80610458  7F E7 FB 78 */	mr r7, r31
/* 8061045C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80610460  7F 69 DB 78 */	mr r9, r27
/* 80610464  80 BD 60 9C */	lwz r5, 0x609c(r29)
/* 80610468  38 81 00 14 */	addi r4, r1, 0x14
/* 8061046C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80610470  38 60 00 5F */	li r3, 0x5f
/* 80610474  38 C0 00 00 */	li r6, 0
/* 80610478  39 40 00 05 */	li r10, 5
/* 8061047C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80610480  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80610484  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80610488  81 85 00 00 */	lwz r12, 0(r5)
/* 8061048C  88 BE 00 0E */	lbz r5, 0xe(r30)
/* 80610490  A1 1E 00 0C */	lhz r8, 0xc(r30)
/* 80610494  7D 89 03 A6 */	mtctr r12
/* 80610498  4E 80 04 21 */	bctrl 
/* 8061049C  3B 9C 00 01 */	addi r28, r28, 1
/* 806104A0  2C 1C 00 05 */	cmpwi r28, 5
/* 806104A4  41 80 FF B0 */	blt lbl_80610454
lbl_806104A8:
/* 806104A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806104AC  3B 80 00 00 */	li r28, 0
/* 806104B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806104B4  3F A3 00 02 */	addis r29, r3, 2
lbl_806104B8:
/* 806104B8  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 806104BC  7F E7 FB 78 */	mr r7, r31
/* 806104C0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 806104C4  38 81 00 08 */	addi r4, r1, 8
/* 806104C8  80 BD 60 9C */	lwz r5, 0x609c(r29)
/* 806104CC  38 60 00 5F */	li r3, 0x5f
/* 806104D0  90 C1 00 08 */	stw r6, 8(r1)
/* 806104D4  38 C0 00 00 */	li r6, 0
/* 806104D8  39 20 00 09 */	li r9, 9
/* 806104DC  39 40 00 05 */	li r10, 5
/* 806104E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806104E4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 806104E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806104EC  81 85 00 00 */	lwz r12, 0(r5)
/* 806104F0  88 BE 00 0E */	lbz r5, 0xe(r30)
/* 806104F4  A1 1E 00 0C */	lhz r8, 0xc(r30)
/* 806104F8  7D 89 03 A6 */	mtctr r12
/* 806104FC  4E 80 04 21 */	bctrl 
/* 80610500  3B 9C 00 01 */	addi r28, r28, 1
/* 80610504  2C 1C 00 04 */	cmpwi r28, 4
/* 80610508  41 80 FF B0 */	blt lbl_806104B8
/* 8061050C  38 00 00 00 */	li r0, 0
/* 80610510  39 61 00 40 */	addi r11, r1, 0x40
/* 80610514  B0 1E 00 00 */	sth r0, 0(r30)
/* 80610518  4B A8 AA 01 */	bl func_8009AF18
/* 8061051C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80610520  7C 08 03 A6 */	mtlr r0
/* 80610524  38 21 00 40 */	addi r1, r1, 0x40
/* 80610528  4E 80 00 20 */	blr 
