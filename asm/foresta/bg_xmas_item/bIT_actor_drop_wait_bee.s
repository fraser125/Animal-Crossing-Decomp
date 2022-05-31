lbl_804C9AB8:
/* 804C9AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C9ABC  7C 08 02 A6 */	mflr r0
/* 804C9AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C9AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C9AC8  7C 7F 1B 78 */	mr r31, r3
/* 804C9ACC  A8 63 00 90 */	lha r3, 0x90(r3)
/* 804C9AD0  38 03 FF FF */	addi r0, r3, -1
/* 804C9AD4  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 804C9AD8  A8 1F 00 90 */	lha r0, 0x90(r31)
/* 804C9ADC  2C 00 00 00 */	cmpwi r0, 0
/* 804C9AE0  40 82 00 30 */	bne lbl_804C9B10
/* 804C9AE4  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 804C9AE8  28 03 00 00 */	cmplwi r3, 0
/* 804C9AEC  41 82 00 10 */	beq lbl_804C9AFC
/* 804C9AF0  38 63 00 28 */	addi r3, r3, 0x28
/* 804C9AF4  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C9AF8  4B EF 13 C5 */	bl xyz_t_move
lbl_804C9AFC:
/* 804C9AFC  38 00 00 78 */	li r0, 0x78
/* 804C9B00  3C 60 80 4D */	lis r3, bIT_actor_drop_move_wait@ha /* 0x804C9B24@ha */
/* 804C9B04  B0 1F 00 88 */	sth r0, 0x88(r31)
/* 804C9B08  38 03 9B 24 */	addi r0, r3, bIT_actor_drop_move_wait@l /* 0x804C9B24@l */
/* 804C9B0C  90 1F 00 00 */	stw r0, 0(r31)
lbl_804C9B10:
/* 804C9B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C9B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C9B18  7C 08 03 A6 */	mtlr r0
/* 804C9B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C9B20  4E 80 00 20 */	blr 
