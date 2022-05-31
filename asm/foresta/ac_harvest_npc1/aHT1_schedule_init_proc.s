lbl_80591F40:
/* 80591F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591F44  7C 08 02 A6 */	mflr r0
/* 80591F48  3C A0 80 59 */	lis r5, aHT1_think_proc@ha /* 0x80591F0C@ha */
/* 80591F4C  38 C0 00 00 */	li r6, 0
/* 80591F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591F54  38 05 1F 0C */	addi r0, r5, aHT1_think_proc@l /* 0x80591F0C@l */
/* 80591F58  38 A0 FF FF */	li r5, -1
/* 80591F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80591F60  7C 9F 23 78 */	mr r31, r4
/* 80591F64  93 C1 00 08 */	stw r30, 8(r1)
/* 80591F68  7C 7E 1B 78 */	mr r30, r3
/* 80591F6C  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80591F70  38 60 00 03 */	li r3, 3
/* 80591F74  38 00 00 FE */	li r0, 0xfe
/* 80591F78  98 DE 08 31 */	stb r6, 0x831(r30)
/* 80591F7C  90 BE 08 F4 */	stw r5, 0x8f4(r30)
/* 80591F80  90 BE 09 98 */	stw r5, 0x998(r30)
/* 80591F84  90 7E 08 40 */	stw r3, 0x840(r30)
/* 80591F88  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 80591F8C  4B FF FD 05 */	bl aHT1_GetDefaultAngle
/* 80591F90  B0 7E 00 DE */	sth r3, 0xde(r30)
/* 80591F94  4B FF FC FD */	bl aHT1_GetDefaultAngle
/* 80591F98  B0 7E 00 36 */	sth r3, 0x36(r30)
/* 80591F9C  4B FF FC F5 */	bl aHT1_GetDefaultAngle
/* 80591FA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80591FA4  B0 7E 09 24 */	sth r3, 0x924(r30)
/* 80591FA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80591FAC  7F C3 F3 78 */	mr r3, r30
/* 80591FB0  3C A4 00 02 */	addis r5, r4, 2
/* 80591FB4  7F E4 FB 78 */	mr r4, r31
/* 80591FB8  80 E5 60 4C */	lwz r7, 0x604c(r5)
/* 80591FBC  38 A0 00 09 */	li r5, 9
/* 80591FC0  38 C0 00 00 */	li r6, 0
/* 80591FC4  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80591FC8  7D 89 03 A6 */	mtctr r12
/* 80591FCC  4E 80 04 21 */	bctrl 
/* 80591FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80591FD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80591FDC  7C 08 03 A6 */	mtlr r0
/* 80591FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80591FE4  4E 80 00 20 */	blr 
