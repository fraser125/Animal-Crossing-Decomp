lbl_803ED0BC:
/* 803ED0BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED0C0  7C 08 02 A6 */	mflr r0
/* 803ED0C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED0C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED0CC  7C 9F 23 78 */	mr r31, r4
/* 803ED0D0  38 80 00 09 */	li r4, 9
/* 803ED0D4  93 C1 00 08 */	stw r30, 8(r1)
/* 803ED0D8  7C 7E 1B 78 */	mr r30, r3
/* 803ED0DC  38 60 00 04 */	li r3, 4
/* 803ED0E0  4B FA B3 9D */	bl mDemo_Get_OrderValue
/* 803ED0E4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803ED0E8  2C 00 00 02 */	cmpwi r0, 2
/* 803ED0EC  41 82 00 58 */	beq lbl_803ED144
/* 803ED0F0  40 80 00 90 */	bge lbl_803ED180
/* 803ED0F4  2C 00 00 01 */	cmpwi r0, 1
/* 803ED0F8  40 80 00 08 */	bge lbl_803ED100
/* 803ED0FC  48 00 00 84 */	b lbl_803ED180
lbl_803ED100:
/* 803ED100  7F E3 FB 78 */	mr r3, r31
/* 803ED104  38 80 25 23 */	li r4, 0x2523
/* 803ED108  38 A0 00 07 */	li r5, 7
/* 803ED10C  38 C0 00 00 */	li r6, 0
/* 803ED110  38 E0 00 00 */	li r7, 0
/* 803ED114  4B FE D3 4D */	bl mPlib_request_main_give_type1
/* 803ED118  38 60 00 04 */	li r3, 4
/* 803ED11C  38 80 00 09 */	li r4, 9
/* 803ED120  38 A0 00 02 */	li r5, 2
/* 803ED124  4B FA B3 15 */	bl mDemo_Set_OrderValue
/* 803ED128  4B FD 25 81 */	bl func_803BF6A8
/* 803ED12C  4B FD 3C 15 */	bl mMsg_Set_LockContinue
/* 803ED130  38 60 00 04 */	li r3, 4
/* 803ED134  38 80 00 01 */	li r4, 1
/* 803ED138  38 A0 00 03 */	li r5, 3
/* 803ED13C  4B FA B2 FD */	bl mDemo_Set_OrderValue
/* 803ED140  48 00 00 40 */	b lbl_803ED180
lbl_803ED144:
/* 803ED144  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED148  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED14C  3C 63 00 02 */	addis r3, r3, 2
/* 803ED150  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 803ED154  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803ED158  28 00 00 00 */	cmplwi r0, 0
/* 803ED15C  40 82 00 24 */	bne lbl_803ED180
/* 803ED160  4B FD 25 49 */	bl func_803BF6A8
/* 803ED164  4B FD 3B E9 */	bl mMsg_Unset_LockContinue
/* 803ED168  38 60 00 04 */	li r3, 4
/* 803ED16C  38 80 00 09 */	li r4, 9
/* 803ED170  38 A0 00 00 */	li r5, 0
/* 803ED174  4B FA B2 C5 */	bl mDemo_Set_OrderValue
/* 803ED178  38 00 00 09 */	li r0, 9
/* 803ED17C  98 1E 09 B2 */	stb r0, 0x9b2(r30)
lbl_803ED180:
/* 803ED180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED188  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ED18C  7C 08 03 A6 */	mtlr r0
/* 803ED190  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED194  4E 80 00 20 */	blr 
