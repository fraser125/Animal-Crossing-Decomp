lbl_805279C8:
/* 805279C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805279CC  7C 08 02 A6 */	mflr r0
/* 805279D0  38 80 00 01 */	li r4, 1
/* 805279D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805279D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805279DC  7C 7F 1B 78 */	mr r31, r3
/* 805279E0  38 60 00 04 */	li r3, 4
/* 805279E4  4B E7 0A 99 */	bl mDemo_Get_OrderValue
/* 805279E8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805279EC  40 82 00 34 */	bne lbl_80527A20
/* 805279F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805279F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805279F8  3C 63 00 02 */	addis r3, r3, 2
/* 805279FC  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80527A00  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80527A04  28 00 00 00 */	cmplwi r0, 0
/* 80527A08  40 82 00 18 */	bne lbl_80527A20
/* 80527A0C  4B E9 7C 9D */	bl func_803BF6A8
/* 80527A10  4B E9 93 3D */	bl mMsg_Unset_LockContinue
/* 80527A14  7F E3 FB 78 */	mr r3, r31
/* 80527A18  38 80 00 07 */	li r4, 7
/* 80527A1C  48 00 02 D9 */	bl aHWN_change_talk_proc
lbl_80527A20:
/* 80527A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80527A28  7C 08 03 A6 */	mtlr r0
/* 80527A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80527A30  4E 80 00 20 */	blr 
