lbl_805FC3EC:
/* 805FC3EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FC3F0  7C 08 02 A6 */	mflr r0
/* 805FC3F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FC3F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC3FC  4B A9 EA D9 */	bl func_8009AED4
/* 805FC400  7C 9E 23 78 */	mr r30, r4
/* 805FC404  7C 7D 1B 78 */	mr r29, r3
/* 805FC408  80 04 00 00 */	lwz r0, 0(r4)
/* 805FC40C  7C BF 2B 78 */	mr r31, r5
/* 805FC410  2C 00 00 01 */	cmpwi r0, 1
/* 805FC414  40 82 00 18 */	bne lbl_805FC42C
/* 805FC418  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC41C  2C 00 00 0D */	cmpwi r0, 0xd
/* 805FC420  40 82 00 0C */	bne lbl_805FC42C
/* 805FC424  4B FF B5 B9 */	bl mTG_exchange_proc
/* 805FC428  48 00 00 F8 */	b lbl_805FC520
lbl_805FC42C:
/* 805FC42C  7F A3 EB 78 */	mr r3, r29
/* 805FC430  4B FF 31 B5 */	bl func_805EF5E4
/* 805FC434  2C 03 00 00 */	cmpwi r3, 0
/* 805FC438  41 82 00 DC */	beq lbl_805FC514
/* 805FC43C  80 1E 00 00 */	lwz r0, 0(r30)
/* 805FC440  2C 00 00 18 */	cmpwi r0, 0x18
/* 805FC444  41 82 00 20 */	beq lbl_805FC464
/* 805FC448  40 80 00 10 */	bge lbl_805FC458
/* 805FC44C  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FC450  41 82 00 14 */	beq lbl_805FC464
/* 805FC454  48 00 00 38 */	b lbl_805FC48C
lbl_805FC458:
/* 805FC458  2C 00 00 1A */	cmpwi r0, 0x1a
/* 805FC45C  41 82 00 08 */	beq lbl_805FC464
/* 805FC460  48 00 00 2C */	b lbl_805FC48C
lbl_805FC464:
/* 805FC464  38 00 00 02 */	li r0, 2
/* 805FC468  7F A3 EB 78 */	mr r3, r29
/* 805FC46C  90 1E 00 04 */	stw r0, 4(r30)
/* 805FC470  38 80 00 0F */	li r4, 0xf
/* 805FC474  38 A0 00 03 */	li r5, 3
/* 805FC478  38 C0 00 00 */	li r6, 0
/* 805FC47C  4B DF 32 61 */	bl mSM_open_submenu
/* 805FC480  38 60 00 5F */	li r3, 0x5f
/* 805FC484  48 03 18 81 */	bl sAdo_SysTrgStart
/* 805FC488  48 00 00 98 */	b lbl_805FC520
lbl_805FC48C:
/* 805FC48C  28 00 00 17 */	cmplwi r0, 0x17
/* 805FC490  3B E0 00 31 */	li r31, 0x31
/* 805FC494  41 81 00 4C */	bgt lbl_805FC4E0
/* 805FC498  3C 60 80 6D */	lis r3, lit_4701@ha /* 0x806D0F40@ha */
/* 805FC49C  54 00 10 3A */	slwi r0, r0, 2
/* 805FC4A0  38 63 0F 40 */	addi r3, r3, lit_4701@l /* 0x806D0F40@l */
/* 805FC4A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 805FC4A8  7C 09 03 A6 */	mtctr r0
/* 805FC4AC  4E 80 04 20 */	bctr 
lbl_805FC4B0:
/* 805FC4B0  38 80 00 00 */	li r4, 0
/* 805FC4B4  48 00 00 30 */	b lbl_805FC4E4
lbl_805FC4B8:
/* 805FC4B8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC4BC  38 80 00 00 */	li r4, 0
/* 805FC4C0  2C 00 00 02 */	cmpwi r0, 2
/* 805FC4C4  40 82 00 20 */	bne lbl_805FC4E4
/* 805FC4C8  38 80 FF FF */	li r4, -1
/* 805FC4CC  48 00 00 18 */	b lbl_805FC4E4
lbl_805FC4D0:
/* 805FC4D0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008005@ha */
/* 805FC4D4  38 80 00 02 */	li r4, 2
/* 805FC4D8  3B E3 80 05 */	addi r31, r3, 0x8005 /* 0x00008005@l */
/* 805FC4DC  48 00 00 08 */	b lbl_805FC4E4
lbl_805FC4E0:
/* 805FC4E0  38 80 00 02 */	li r4, 2
lbl_805FC4E4:
/* 805FC4E4  2C 04 FF FF */	cmpwi r4, -1
/* 805FC4E8  41 82 00 18 */	beq lbl_805FC500
/* 805FC4EC  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805FC4F0  7F C3 F3 78 */	mr r3, r30
/* 805FC4F4  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805FC4F8  7D 89 03 A6 */	mtctr r12
/* 805FC4FC  4E 80 04 21 */	bctrl 
lbl_805FC500:
/* 805FC500  2C 1F 00 00 */	cmpwi r31, 0
/* 805FC504  41 80 00 1C */	blt lbl_805FC520
/* 805FC508  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 805FC50C  48 03 17 F9 */	bl sAdo_SysTrgStart
/* 805FC510  48 00 00 10 */	b lbl_805FC520
lbl_805FC514:
/* 805FC514  7F A3 EB 78 */	mr r3, r29
/* 805FC518  7F E4 FB 78 */	mr r4, r31
/* 805FC51C  4B FF F8 ED */	bl mTG_hand_return_item
lbl_805FC520:
/* 805FC520  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC524  4B A9 E9 FD */	bl func_8009AF20
/* 805FC528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FC52C  7C 08 03 A6 */	mtlr r0
/* 805FC530  38 21 00 20 */	addi r1, r1, 0x20
/* 805FC534  4E 80 00 20 */	blr 
