lbl_8058055C:
/* 8058055C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580560  7C 08 02 A6 */	mflr r0
/* 80580564  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80580568  3C E0 80 6C */	lis r7, ct_data@ha /* 0x806C0C3C@ha */
/* 8058056C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580570  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80580574  3C C5 00 02 */	addis r6, r5, 2
/* 80580578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058057C  7C 7F 1B 78 */	mr r31, r3
/* 80580580  38 A7 0C 3C */	addi r5, r7, ct_data@l /* 0x806C0C3C@l */
/* 80580584  93 C1 00 08 */	stw r30, 8(r1)
/* 80580588  7C 9E 23 78 */	mr r30, r4
/* 8058058C  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80580590  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80580594  7D 89 03 A6 */	mtctr r12
/* 80580598  4E 80 04 21 */	bctrl 
/* 8058059C  3C 80 80 65 */	lis r4, data_80649A5C@ha /* 0x80649A5C@ha */
/* 805805A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805805A4  C0 04 9A 5C */	lfs f0, data_80649A5C@l(r4)  /* 0x80649A5C@l */
/* 805805A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805805AC  38 A0 00 00 */	li r5, 0
/* 805805B0  38 80 FF FF */	li r4, -1
/* 805805B4  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 805805B8  38 00 00 01 */	li r0, 1
/* 805805BC  3C 63 00 03 */	addis r3, r3, 3
/* 805805C0  B0 BF 09 B4 */	sth r5, 0x9b4(r31)
/* 805805C4  98 BF 08 30 */	stb r5, 0x830(r31)
/* 805805C8  90 9F 09 C0 */	stw r4, 0x9c0(r31)
/* 805805CC  98 1F 01 08 */	stb r0, 0x108(r31)
/* 805805D0  A0 03 85 3E */	lhz r0, -0x7ac2(r3)
/* 805805D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 805805D8  40 82 00 10 */	bne lbl_805805E8
/* 805805DC  B0 BF 09 78 */	sth r5, 0x978(r31)
/* 805805E0  38 A0 00 3D */	li r5, 0x3d
/* 805805E4  48 00 00 08 */	b lbl_805805EC
lbl_805805E8:
/* 805805E8  38 A0 00 00 */	li r5, 0
lbl_805805EC:
/* 805805EC  7F E3 FB 78 */	mr r3, r31
/* 805805F0  7F C4 F3 78 */	mr r4, r30
/* 805805F4  48 00 59 CD */	bl aNSC_setupAction
/* 805805F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805805FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80580600  83 C1 00 08 */	lwz r30, 8(r1)
/* 80580604  7C 08 03 A6 */	mtlr r0
/* 80580608  38 21 00 10 */	addi r1, r1, 0x10
/* 8058060C  4E 80 00 20 */	blr 