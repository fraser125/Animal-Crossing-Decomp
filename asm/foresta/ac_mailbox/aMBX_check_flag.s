lbl_8042D5CC:
/* 8042D5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D5D0  7C 08 02 A6 */	mflr r0
/* 8042D5D4  38 80 00 0A */	li r4, 0xa
/* 8042D5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D5DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D5E0  3B E0 00 06 */	li r31, 6
/* 8042D5E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8042D5E8  7C 7E 1B 78 */	mr r30, r3
/* 8042D5EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042D5F0  80 BE 03 18 */	lwz r5, 0x318(r30)
/* 8042D5F4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8042D5F8  1C 65 26 B0 */	mulli r3, r5, 0x26b0
/* 8042D5FC  7C 60 1A 14 */	add r3, r0, r3
/* 8042D600  3C 63 00 01 */	addis r3, r3, 1
/* 8042D604  38 63 B7 18 */	addi r3, r3, -18664
/* 8042D608  4B F8 F3 05 */	bl mMl_count_use_mail_space
/* 8042D60C  2C 03 00 00 */	cmpwi r3, 0
/* 8042D610  41 82 00 24 */	beq lbl_8042D634
/* 8042D614  80 1E 03 0C */	lwz r0, 0x30c(r30)
/* 8042D618  2C 00 00 05 */	cmpwi r0, 5
/* 8042D61C  41 82 00 0C */	beq lbl_8042D628
/* 8042D620  2C 00 00 07 */	cmpwi r0, 7
/* 8042D624  40 82 00 0C */	bne lbl_8042D630
lbl_8042D628:
/* 8042D628  3B E0 00 05 */	li r31, 5
/* 8042D62C  48 00 00 08 */	b lbl_8042D634
lbl_8042D630:
/* 8042D630  3B E0 00 04 */	li r31, 4
lbl_8042D634:
/* 8042D634  80 1E 03 0C */	lwz r0, 0x30c(r30)
/* 8042D638  7C 00 F8 00 */	cmpw r0, r31
/* 8042D63C  41 82 00 10 */	beq lbl_8042D64C
/* 8042D640  7F C3 F3 78 */	mr r3, r30
/* 8042D644  7F E4 FB 78 */	mr r4, r31
/* 8042D648  4B FF FD B1 */	bl aMBX_setup_flag_anime
lbl_8042D64C:
/* 8042D64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D654  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042D658  7C 08 03 A6 */	mtlr r0
/* 8042D65C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D660  4E 80 00 20 */	blr 
