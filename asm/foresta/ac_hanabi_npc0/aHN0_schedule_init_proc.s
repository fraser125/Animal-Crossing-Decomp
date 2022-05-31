lbl_80528CE0:
/* 80528CE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80528CE4  7C 08 02 A6 */	mflr r0
/* 80528CE8  3C A0 80 53 */	lis r5, aHN0_think_proc@ha /* 0x80528CAC@ha */
/* 80528CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80528CF0  38 05 8C AC */	addi r0, r5, aHN0_think_proc@l /* 0x80528CAC@l */
/* 80528CF4  38 A0 FF FF */	li r5, -1
/* 80528CF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80528CFC  7C 9F 23 78 */	mr r31, r4
/* 80528D00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80528D04  7C 7E 1B 78 */	mr r30, r3
/* 80528D08  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80528D0C  38 60 00 00 */	li r3, 0
/* 80528D10  38 00 00 FE */	li r0, 0xfe
/* 80528D14  90 BE 08 F4 */	stw r5, 0x8f4(r30)
/* 80528D18  90 BE 09 98 */	stw r5, 0x998(r30)
/* 80528D1C  98 7E 08 31 */	stb r3, 0x831(r30)
/* 80528D20  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 80528D24  4B B3 3F D1 */	bl fqrand
/* 80528D28  3C 60 80 65 */	lis r3, lit_617@ha /* 0x80649208@ha */
/* 80528D2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80528D30  38 A3 92 08 */	addi r5, r3, lit_617@l /* 0x80649208@l */
/* 80528D34  7F C3 F3 78 */	mr r3, r30
/* 80528D38  C0 05 00 00 */	lfs f0, 0(r5)
/* 80528D3C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80528D40  3C E4 00 02 */	addis r7, r4, 2
/* 80528D44  7F E4 FB 78 */	mr r4, r31
/* 80528D48  EC 00 00 72 */	fmuls f0, f0, f1
/* 80528D4C  38 A0 00 09 */	li r5, 9
/* 80528D50  38 C0 00 00 */	li r6, 0
/* 80528D54  FC 00 00 1E */	fctiwz f0, f0
/* 80528D58  D8 01 00 08 */	stfd f0, 8(r1)
/* 80528D5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80528D60  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 80528D64  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 80528D68  B0 1E 09 A0 */	sth r0, 0x9a0(r30)
/* 80528D6C  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80528D70  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80528D74  7D 89 03 A6 */	mtctr r12
/* 80528D78  4E 80 04 21 */	bctrl 
/* 80528D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80528D80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80528D84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80528D88  7C 08 03 A6 */	mtlr r0
/* 80528D8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80528D90  4E 80 00 20 */	blr 
