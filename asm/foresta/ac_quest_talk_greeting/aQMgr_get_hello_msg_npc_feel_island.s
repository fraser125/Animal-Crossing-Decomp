lbl_8048851C:
/* 8048851C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80488520  7C 08 02 A6 */	mflr r0
/* 80488524  90 01 00 14 */	stw r0, 0x14(r1)
/* 80488528  34 03 FF FE */	addic. r0, r3, -2
/* 8048852C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80488530  93 C1 00 08 */	stw r30, 8(r1)
/* 80488534  7C 9E 23 78 */	mr r30, r4
/* 80488538  41 80 00 0C */	blt lbl_80488544
/* 8048853C  2C 00 00 07 */	cmpwi r0, 7
/* 80488540  41 80 00 08 */	blt lbl_80488548
lbl_80488544:
/* 80488544  38 00 00 00 */	li r0, 0
lbl_80488548:
/* 80488548  3C 60 80 69 */	lis r3, feel_msg_table_474@ha /* 0x8068AEC4@ha */
/* 8048854C  54 00 10 3A */	slwi r0, r0, 2
/* 80488550  38 63 AE C4 */	addi r3, r3, feel_msg_table_474@l /* 0x8068AEC4@l */
/* 80488554  7F E3 00 2E */	lwzx r31, r3, r0
/* 80488558  28 1F 00 00 */	cmplwi r31, 0
/* 8048855C  40 82 00 10 */	bne lbl_8048856C
/* 80488560  3C 60 80 69 */	lis r3, l_hello_rage_msg@ha /* 0x8068AE00@ha */
/* 80488564  38 03 AE 00 */	addi r0, r3, l_hello_rage_msg@l /* 0x8068AE00@l */
/* 80488568  7C 1F 03 78 */	mr r31, r0
lbl_8048856C:
/* 8048856C  38 60 00 03 */	li r3, 3
/* 80488570  4B F5 BE 61 */	bl mQst_GetRandom
/* 80488574  57 C0 10 3A */	slwi r0, r30, 2
/* 80488578  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8048857C  7C 63 02 14 */	add r3, r3, r0
/* 80488580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80488584  83 C1 00 08 */	lwz r30, 8(r1)
/* 80488588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048858C  7C 08 03 A6 */	mtlr r0
/* 80488590  38 21 00 10 */	addi r1, r1, 0x10
/* 80488594  4E 80 00 20 */	blr 
