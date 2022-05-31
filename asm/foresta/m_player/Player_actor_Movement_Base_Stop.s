lbl_804D5ABC:
/* 804D5ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5AC0  7C 08 02 A6 */	mflr r0
/* 804D5AC4  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804D5AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5ACC  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804D5AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5AD4  7C 9F 23 78 */	mr r31, r4
/* 804D5AD8  93 C1 00 08 */	stw r30, 8(r1)
/* 804D5ADC  7C 7E 1B 78 */	mr r30, r3
/* 804D5AE0  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 804D5AE4  4B E9 E7 C1 */	bl Actor_position_speed_set
/* 804D5AE8  2C 1F 00 00 */	cmpwi r31, 0
/* 804D5AEC  40 82 00 10 */	bne lbl_804D5AFC
/* 804D5AF0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D5AF4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804D5AF8  D0 1E 00 6C */	stfs f0, 0x6c(r30)
lbl_804D5AFC:
/* 804D5AFC  7F C3 F3 78 */	mr r3, r30
/* 804D5B00  4B E9 E7 09 */	bl Actor_position_move
/* 804D5B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5B0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D5B10  7C 08 03 A6 */	mtlr r0
/* 804D5B14  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5B18  4E 80 00 20 */	blr 
