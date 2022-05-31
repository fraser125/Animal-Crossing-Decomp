lbl_80592DE4:
/* 80592DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592DE8  7C 08 02 A6 */	mflr r0
/* 80592DEC  3C C0 80 65 */	lis r6, data_80649CAC@ha /* 0x80649CAC@ha */
/* 80592DF0  3C A0 80 59 */	lis r5, aEMJ_think_proc@ha /* 0x80592DB0@ha */
/* 80592DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592DF8  38 05 2D B0 */	addi r0, r5, aEMJ_think_proc@l /* 0x80592DB0@l */
/* 80592DFC  C0 26 9C AC */	lfs f1, data_80649CAC@l(r6)  /* 0x80649CAC@l */
/* 80592E00  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592E04  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80592E08  38 00 00 00 */	li r0, 0
/* 80592E0C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592E10  38 C0 00 00 */	li r6, 0
/* 80592E14  98 03 08 31 */	stb r0, 0x831(r3)
/* 80592E18  38 00 FF FF */	li r0, -1
/* 80592E1C  3C E5 00 02 */	addis r7, r5, 2
/* 80592E20  38 A0 00 09 */	li r5, 9
/* 80592E24  90 03 08 F4 */	stw r0, 0x8f4(r3)
/* 80592E28  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80592E2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80592E30  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80592E34  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80592E38  EC 00 08 2A */	fadds f0, f0, f1
/* 80592E3C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80592E40  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80592E44  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80592E48  7D 89 03 A6 */	mtctr r12
/* 80592E4C  4E 80 04 21 */	bctrl 
/* 80592E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592E54  7C 08 03 A6 */	mtlr r0
/* 80592E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80592E5C  4E 80 00 20 */	blr 
