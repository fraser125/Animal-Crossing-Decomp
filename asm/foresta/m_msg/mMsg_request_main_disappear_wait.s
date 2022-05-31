lbl_803BF994:
/* 803BF994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF998  7C 08 02 A6 */	mflr r0
/* 803BF99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF9A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BF9A4  7C 9F 23 78 */	mr r31, r4
/* 803BF9A8  38 80 00 07 */	li r4, 7
/* 803BF9AC  93 C1 00 08 */	stw r30, 8(r1)
/* 803BF9B0  7C 7E 1B 78 */	mr r30, r3
/* 803BF9B4  4B FF FD 1D */	bl mMsg_Change_request_main_index
/* 803BF9B8  2C 03 00 00 */	cmpwi r3, 0
/* 803BF9BC  41 82 00 10 */	beq lbl_803BF9CC
/* 803BF9C0  93 FE 04 60 */	stw r31, 0x460(r30)
/* 803BF9C4  38 60 00 01 */	li r3, 1
/* 803BF9C8  48 00 00 08 */	b lbl_803BF9D0
lbl_803BF9CC:
/* 803BF9CC  38 60 00 00 */	li r3, 0
lbl_803BF9D0:
/* 803BF9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BF9D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BF9DC  7C 08 03 A6 */	mtlr r0
/* 803BF9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF9E4  4E 80 00 20 */	blr 
