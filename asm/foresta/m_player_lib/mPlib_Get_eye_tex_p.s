lbl_803DA094:
/* 803DA094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA098  7C 08 02 A6 */	mflr r0
/* 803DA09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA0A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803DA0A8  41 80 00 30 */	blt lbl_803DA0D8
/* 803DA0AC  2C 1F 00 08 */	cmpwi r31, 8
/* 803DA0B0  40 80 00 28 */	bge lbl_803DA0D8
/* 803DA0B4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DA0B8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DA0BC  80 63 00 00 */	lwz r3, 0(r3)
/* 803DA0C0  4B FF F3 39 */	bl mPlib_get_player_face_p
/* 803DA0C4  28 03 00 00 */	cmplwi r3, 0
/* 803DA0C8  41 82 00 10 */	beq lbl_803DA0D8
/* 803DA0CC  57 E0 40 2E */	slwi r0, r31, 8
/* 803DA0D0  7C 63 02 14 */	add r3, r3, r0
/* 803DA0D4  48 00 00 08 */	b lbl_803DA0DC
lbl_803DA0D8:
/* 803DA0D8  38 60 00 00 */	li r3, 0
lbl_803DA0DC:
/* 803DA0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA0E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA0E4  7C 08 03 A6 */	mtlr r0
/* 803DA0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA0EC  4E 80 00 20 */	blr 
