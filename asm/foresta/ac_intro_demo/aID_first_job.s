lbl_8042B110:
/* 8042B110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B114  7C 08 02 A6 */	mflr r0
/* 8042B118  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B11C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042B120  7C 9F 23 78 */	mr r31, r4
/* 8042B124  93 C1 00 08 */	stw r30, 8(r1)
/* 8042B128  7C 7E 1B 78 */	mr r30, r3
/* 8042B12C  80 03 01 A8 */	lwz r0, 0x1a8(r3)
/* 8042B130  2C 00 00 01 */	cmpwi r0, 1
/* 8042B134  40 82 00 44 */	bne lbl_8042B178
/* 8042B138  4B FB 8A 31 */	bl mQst_GetFirstJobData
/* 8042B13C  38 80 00 01 */	li r4, 1
/* 8042B140  4B FB 78 0D */	bl mQst_ClearErrand
/* 8042B144  4B F6 FB 51 */	bl mEv_UnSetFirstJob
/* 8042B148  38 60 00 01 */	li r3, 1
/* 8042B14C  4B FC 82 E1 */	bl mTM_off_renew_time
/* 8042B150  7F C3 F3 78 */	mr r3, r30
/* 8042B154  4B F4 92 ED */	bl Actor_delete
/* 8042B158  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042B15C  38 80 00 01 */	li r4, 1
/* 8042B160  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042B164  38 00 00 00 */	li r0, 0
/* 8042B168  3C 63 00 03 */	addis r3, r3, 3
/* 8042B16C  98 83 85 BF */	stb r4, -0x7a41(r3)
/* 8042B170  98 1F 20 AC */	stb r0, 0x20ac(r31)
/* 8042B174  48 00 00 08 */	b lbl_8042B17C
lbl_8042B178:
/* 8042B178  4B FF F9 01 */	bl aID_check_set_first_field_bgm
lbl_8042B17C:
/* 8042B17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042B184  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042B188  7C 08 03 A6 */	mtlr r0
/* 8042B18C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B190  4E 80 00 20 */	blr 
