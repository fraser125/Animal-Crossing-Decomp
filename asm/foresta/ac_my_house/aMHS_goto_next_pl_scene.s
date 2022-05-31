lbl_805B4F80:
/* 805B4F80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B4F84  7C 08 02 A6 */	mflr r0
/* 805B4F88  39 00 00 00 */	li r8, 0
/* 805B4F8C  39 20 00 04 */	li r9, 4
/* 805B4F90  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B4F94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805B4F98  7C 7F 1B 78 */	mr r31, r3
/* 805B4F9C  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 805B4FA0  3C 80 80 6C */	lis r4, data_806C5CC0@ha /* 0x806C5CC0@ha */
/* 805B4FA4  38 84 5C C0 */	addi r4, r4, data_806C5CC0@l /* 0x806C5CC0@l */
/* 805B4FA8  54 07 10 3A */	slwi r7, r0, 2
/* 805B4FAC  54 00 08 3C */	slwi r0, r0, 1
/* 805B4FB0  38 C4 01 60 */	addi r6, r4, 0x160
/* 805B4FB4  38 A4 01 70 */	addi r5, r4, 0x170
/* 805B4FB8  7D 46 38 2E */	lwzx r10, r6, r7
/* 805B4FBC  38 84 01 78 */	addi r4, r4, 0x178
/* 805B4FC0  7C E5 02 AE */	lhax r7, r5, r0
/* 805B4FC4  38 A0 00 00 */	li r5, 0
/* 805B4FC8  7C C4 02 AE */	lhax r6, r4, r0
/* 805B4FCC  38 00 00 01 */	li r0, 1
/* 805B4FD0  91 41 00 08 */	stw r10, 8(r1)
/* 805B4FD4  38 81 00 08 */	addi r4, r1, 8
/* 805B4FD8  99 21 00 0C */	stb r9, 0xc(r1)
/* 805B4FDC  99 01 00 0D */	stb r8, 0xd(r1)
/* 805B4FE0  B1 01 00 0E */	sth r8, 0xe(r1)
/* 805B4FE4  B0 E1 00 10 */	sth r7, 0x10(r1)
/* 805B4FE8  B1 01 00 12 */	sth r8, 0x12(r1)
/* 805B4FEC  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 805B4FF0  B1 01 00 16 */	sth r8, 0x16(r1)
/* 805B4FF4  98 01 00 18 */	stb r0, 0x18(r1)
/* 805B4FF8  4B E3 C1 B1 */	bl goto_other_scene
/* 805B4FFC  38 00 00 09 */	li r0, 9
/* 805B5000  98 1F 20 D0 */	stb r0, 0x20d0(r31)
/* 805B5004  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B5008  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805B500C  7C 08 03 A6 */	mtlr r0
/* 805B5010  38 21 00 30 */	addi r1, r1, 0x30
/* 805B5014  4E 80 00 20 */	blr 
