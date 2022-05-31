lbl_803793A4:
/* 803793A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803793A8  7C 08 02 A6 */	mflr r0
/* 803793AC  3C A0 81 13 */	lis r5, data_811351C0@ha /* 0x811351C0@ha */
/* 803793B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803793B4  38 05 51 C0 */	addi r0, r5, data_811351C0@l /* 0x811351C0@l */
/* 803793B8  38 A0 0F FF */	li r5, 0xfff
/* 803793BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803793C0  7C 9F 23 78 */	mr r31, r4
/* 803793C4  38 80 00 00 */	li r4, 0
/* 803793C8  93 C1 00 08 */	stw r30, 8(r1)
/* 803793CC  7C 7E 1B 78 */	mr r30, r3
/* 803793D0  7C 03 03 78 */	mr r3, r0
/* 803793D4  4B FF F6 0D */	bl mBGMClock_over_time_check
/* 803793D8  2C 03 00 00 */	cmpwi r3, 0
/* 803793DC  41 82 00 10 */	beq lbl_803793EC
/* 803793E0  7F C3 F3 78 */	mr r3, r30
/* 803793E4  7F E4 FB 78 */	mr r4, r31
/* 803793E8  4B FF FD F9 */	bl mBGMTime_signal_melody
lbl_803793EC:
/* 803793EC  7F C3 F3 78 */	mr r3, r30
/* 803793F0  4B FF FF 01 */	bl mBGMTime_silent_check
/* 803793F4  2C 03 00 00 */	cmpwi r3, 0
/* 803793F8  40 82 00 14 */	bne lbl_8037940C
/* 803793FC  48 00 30 3D */	bl mBGMPsComp_delete_ps_time
/* 80379400  3C 60 80 38 */	lis r3, mBGMTime_move_wait@ha /* 0x80379360@ha */
/* 80379404  38 03 93 60 */	addi r0, r3, mBGMTime_move_wait@l /* 0x80379360@l */
/* 80379408  90 1E 00 00 */	stw r0, 0(r30)
lbl_8037940C:
/* 8037940C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80379410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80379414  83 C1 00 08 */	lwz r30, 8(r1)
/* 80379418  7C 08 03 A6 */	mtlr r0
/* 8037941C  38 21 00 10 */	addi r1, r1, 0x10
/* 80379420  4E 80 00 20 */	blr 
