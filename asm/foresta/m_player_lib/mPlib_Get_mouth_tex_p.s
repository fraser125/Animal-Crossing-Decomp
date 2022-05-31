lbl_803DA0F0:
/* 803DA0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA0F4  7C 08 02 A6 */	mflr r0
/* 803DA0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA0FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA100  7C 7F 1B 79 */	or. r31, r3, r3
/* 803DA104  41 80 00 34 */	blt lbl_803DA138
/* 803DA108  2C 1F 00 06 */	cmpwi r31, 6
/* 803DA10C  40 80 00 2C */	bge lbl_803DA138
/* 803DA110  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DA114  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DA118  80 63 00 00 */	lwz r3, 0(r3)
/* 803DA11C  4B FF F2 DD */	bl mPlib_get_player_face_p
/* 803DA120  28 03 00 00 */	cmplwi r3, 0
/* 803DA124  41 82 00 14 */	beq lbl_803DA138
/* 803DA128  57 E0 40 2E */	slwi r0, r31, 8
/* 803DA12C  7C 60 1A 14 */	add r3, r0, r3
/* 803DA130  38 63 08 00 */	addi r3, r3, 0x800
/* 803DA134  48 00 00 08 */	b lbl_803DA13C
lbl_803DA138:
/* 803DA138  38 60 00 00 */	li r3, 0
lbl_803DA13C:
/* 803DA13C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA144  7C 08 03 A6 */	mtlr r0
/* 803DA148  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA14C  4E 80 00 20 */	blr 
