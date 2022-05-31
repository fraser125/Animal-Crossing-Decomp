lbl_803FF0F0:
/* 803FF0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FF0F4  7C 08 02 A6 */	mflr r0
/* 803FF0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FF0FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FF100  7C 9F 23 78 */	mr r31, r4
/* 803FF104  93 C1 00 08 */	stw r30, 8(r1)
/* 803FF108  7C 7E 1B 78 */	mr r30, r3
/* 803FF10C  4B FF D6 79 */	bl mCD_check_broken_land
/* 803FF110  2C 03 00 01 */	cmpwi r3, 1
/* 803FF114  40 82 00 30 */	bne lbl_803FF144
/* 803FF118  7F C3 F3 78 */	mr r3, r30
/* 803FF11C  4B FF D7 4D */	bl mCD_repair_load_land
/* 803FF120  2C 03 00 01 */	cmpwi r3, 1
/* 803FF124  40 82 00 14 */	bne lbl_803FF138
/* 803FF128  80 7F 00 00 */	lwz r3, 0(r31)
/* 803FF12C  38 03 00 01 */	addi r0, r3, 1
/* 803FF130  90 1F 00 00 */	stw r0, 0(r31)
/* 803FF134  48 00 00 18 */	b lbl_803FF14C
lbl_803FF138:
/* 803FF138  38 00 00 04 */	li r0, 4
/* 803FF13C  90 1F 00 00 */	stw r0, 0(r31)
/* 803FF140  48 00 00 0C */	b lbl_803FF14C
lbl_803FF144:
/* 803FF144  38 00 00 04 */	li r0, 4
/* 803FF148  90 1F 00 00 */	stw r0, 0(r31)
lbl_803FF14C:
/* 803FF14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FF150  38 60 00 01 */	li r3, 1
/* 803FF154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FF158  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FF15C  7C 08 03 A6 */	mtlr r0
/* 803FF160  38 21 00 10 */	addi r1, r1, 0x10
/* 803FF164  4E 80 00 20 */	blr 
