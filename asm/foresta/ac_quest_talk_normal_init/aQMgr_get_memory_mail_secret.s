lbl_80492724:
/* 80492724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80492728  7C 08 02 A6 */	mflr r0
/* 8049272C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80492730  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80492734  7C 7F 1B 78 */	mr r31, r3
/* 80492738  4B BC A5 BD */	bl fqrand
/* 8049273C  3C 80 80 64 */	lis r4, lit_826@ha /* 0x80644C74@ha */
/* 80492740  3C 60 80 69 */	lis r3, animal_mail@ha /* 0x8068B660@ha */
/* 80492744  38 A4 4C 74 */	addi r5, r4, lit_826@l /* 0x80644C74@l */
/* 80492748  38 81 00 08 */	addi r4, r1, 8
/* 8049274C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80492750  38 C3 B6 60 */	addi r6, r3, animal_mail@l /* 0x8068B660@l */
/* 80492754  38 66 00 05 */	addi r3, r6, 5
/* 80492758  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049275C  38 A6 00 DD */	addi r5, r6, 0xdd
/* 80492760  38 C6 00 1D */	addi r6, r6, 0x1d
/* 80492764  FC 00 00 1E */	fctiwz f0, f0
/* 80492768  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8049276C  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 80492770  38 E7 00 22 */	addi r7, r7, 0x22
/* 80492774  4B F1 FF C1 */	bl mHandbill_Load_HandbillFromRom
/* 80492778  3C 60 80 69 */	lis r3, animal_mail@ha /* 0x8068B660@ha */
/* 8049277C  80 81 00 08 */	lwz r4, 8(r1)
/* 80492780  38 63 B6 60 */	addi r3, r3, animal_mail@l /* 0x8068B660@l */
/* 80492784  38 00 00 00 */	li r0, 0
/* 80492788  98 83 00 04 */	stb r4, 4(r3)
/* 8049278C  98 03 00 00 */	stb r0, 0(r3)
/* 80492790  4B F3 B5 21 */	bl mNpc_GetPaperType
/* 80492794  3C 80 80 69 */	lis r4, animal_mail@ha /* 0x8068B660@ha */
/* 80492798  38 00 00 00 */	li r0, 0
/* 8049279C  38 84 B6 60 */	addi r4, r4, animal_mail@l /* 0x8068B660@l */
/* 804927A0  98 64 00 01 */	stb r3, 1(r4)
/* 804927A4  7C 83 23 78 */	mr r3, r4
/* 804927A8  90 1F 00 00 */	stw r0, 0(r31)
/* 804927AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804927B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804927B4  7C 08 03 A6 */	mtlr r0
/* 804927B8  38 21 00 20 */	addi r1, r1, 0x20
/* 804927BC  4E 80 00 20 */	blr 
