lbl_805EB4B8:
/* 805EB4B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EB4BC  7C 08 02 A6 */	mflr r0
/* 805EB4C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EB4C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB4C8  4B AA FA 09 */	bl func_8009AED0
/* 805EB4CC  7C 7C 1B 78 */	mr r28, r3
/* 805EB4D0  7C 9D 23 78 */	mr r29, r4
/* 805EB4D4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805EB4D8  7F A3 EB 78 */	mr r3, r29
/* 805EB4DC  83 DF 09 B8 */	lwz r30, 0x9b8(r31)
/* 805EB4E0  4B FF F7 D1 */	bl mNT_roll_control2
/* 805EB4E4  80 1F 04 90 */	lwz r0, 0x490(r31)
/* 805EB4E8  2C 00 00 00 */	cmpwi r0, 0
/* 805EB4EC  40 82 00 9C */	bne lbl_805EB588
/* 805EB4F0  80 1F 04 BC */	lwz r0, 0x4bc(r31)
/* 805EB4F4  2C 00 00 04 */	cmpwi r0, 4
/* 805EB4F8  40 82 00 90 */	bne lbl_805EB588
/* 805EB4FC  80 1F 04 C8 */	lwz r0, 0x4c8(r31)
/* 805EB500  2C 00 00 00 */	cmpwi r0, 0
/* 805EB504  40 82 00 2C */	bne lbl_805EB530
/* 805EB508  38 7E 00 08 */	addi r3, r30, 8
/* 805EB50C  4B DD ED 25 */	bl mNtc_notice_write
/* 805EB510  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805EB514  7F A3 EB 78 */	mr r3, r29
/* 805EB518  38 80 00 04 */	li r4, 4
/* 805EB51C  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805EB520  7D 89 03 A6 */	mtctr r12
/* 805EB524  4E 80 04 21 */	bctrl 
/* 805EB528  4B FF F5 D9 */	bl mNT_finish_notice_first_job
/* 805EB52C  48 00 00 5C */	b lbl_805EB588
lbl_805EB530:
/* 805EB530  2C 00 00 01 */	cmpwi r0, 1
/* 805EB534  40 82 00 2C */	bne lbl_805EB560
/* 805EB538  7F 83 E3 78 */	mr r3, r28
/* 805EB53C  38 FE 00 08 */	addi r7, r30, 8
/* 805EB540  38 80 00 0A */	li r4, 0xa
/* 805EB544  38 A0 00 02 */	li r5, 2
/* 805EB548  38 C0 00 00 */	li r6, 0
/* 805EB54C  39 00 00 C0 */	li r8, 0xc0
/* 805EB550  4B E0 41 D9 */	bl mSM_open_submenu_new2
/* 805EB554  38 00 00 01 */	li r0, 1
/* 805EB558  90 1D 00 04 */	stw r0, 4(r29)
/* 805EB55C  48 00 00 2C */	b lbl_805EB588
lbl_805EB560:
/* 805EB560  38 00 00 01 */	li r0, 1
/* 805EB564  3C 60 80 65 */	lis r3, lit_534@ha /* 0x8064B6F8@ha */
/* 805EB568  90 1D 00 04 */	stw r0, 4(r29)
/* 805EB56C  38 00 00 03 */	li r0, 3
/* 805EB570  C0 03 B6 F8 */	lfs f0, lit_534@l(r3)  /* 0x8064B6F8@l */
/* 805EB574  98 1E 00 00 */	stb r0, 0(r30)
/* 805EB578  88 7E 00 03 */	lbz r3, 3(r30)
/* 805EB57C  38 03 FF FF */	addi r0, r3, -1
/* 805EB580  98 1E 00 04 */	stb r0, 4(r30)
/* 805EB584  D0 1D 00 18 */	stfs f0, 0x18(r29)
lbl_805EB588:
/* 805EB588  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB58C  4B AA F9 91 */	bl func_8009AF1C
/* 805EB590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EB594  7C 08 03 A6 */	mtlr r0
/* 805EB598  38 21 00 20 */	addi r1, r1, 0x20
/* 805EB59C  4E 80 00 20 */	blr 
