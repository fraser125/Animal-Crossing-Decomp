lbl_80522DB8:
/* 80522DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522DBC  7C 08 02 A6 */	mflr r0
/* 80522DC0  38 80 00 01 */	li r4, 1
/* 80522DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522DCC  7C 7F 1B 78 */	mr r31, r3
/* 80522DD0  38 60 00 04 */	li r3, 4
/* 80522DD4  4B E7 56 A9 */	bl mDemo_Get_OrderValue
/* 80522DD8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80522DDC  40 82 00 34 */	bne lbl_80522E10
/* 80522DE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80522DE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80522DE8  3C 63 00 02 */	addis r3, r3, 2
/* 80522DEC  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80522DF0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80522DF4  28 00 00 00 */	cmplwi r0, 0
/* 80522DF8  40 82 00 18 */	bne lbl_80522E10
/* 80522DFC  4B E9 C8 AD */	bl func_803BF6A8
/* 80522E00  4B E9 DF 4D */	bl mMsg_Unset_LockContinue
/* 80522E04  7F E3 FB 78 */	mr r3, r31
/* 80522E08  38 80 00 07 */	li r4, 7
/* 80522E0C  48 00 03 D5 */	bl aEPK_change_talk_proc
lbl_80522E10:
/* 80522E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522E18  7C 08 03 A6 */	mtlr r0
/* 80522E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80522E20  4E 80 00 20 */	blr 
