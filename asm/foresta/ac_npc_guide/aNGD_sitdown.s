lbl_805539E8:
/* 805539E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805539EC  7C 08 02 A6 */	mflr r0
/* 805539F0  3C C0 80 65 */	lis r6, lit_544@ha /* 0x8064954C@ha */
/* 805539F4  3C A0 80 65 */	lis r5, lit_554@ha /* 0x80649574@ha */
/* 805539F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805539FC  38 00 00 00 */	li r0, 0
/* 80553A00  C0 26 95 4C */	lfs f1, lit_544@l(r6)  /* 0x8064954C@l */
/* 80553A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553A08  7C 9F 23 78 */	mr r31, r4
/* 80553A0C  C0 05 95 74 */	lfs f0, lit_554@l(r5)  /* 0x80649574@l */
/* 80553A10  93 C1 00 08 */	stw r30, 8(r1)
/* 80553A14  7C 7E 1B 78 */	mr r30, r3
/* 80553A18  D0 3E 00 28 */	stfs f1, 0x28(r30)
/* 80553A1C  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80553A20  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 80553A24  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 80553A28  2C 00 00 01 */	cmpwi r0, 1
/* 80553A2C  40 82 00 48 */	bne lbl_80553A74
/* 80553A30  4B E6 BC 79 */	bl func_803BF6A8
/* 80553A34  4B E6 D3 19 */	bl mMsg_Unset_LockContinue
/* 80553A38  38 00 00 0B */	li r0, 0xb
/* 80553A3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80553A40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80553A44  90 1E 09 98 */	stw r0, 0x998(r30)
/* 80553A48  3C 63 00 02 */	addis r3, r3, 2
/* 80553A4C  38 00 00 01 */	li r0, 1
/* 80553A50  98 03 65 22 */	stb r0, 0x6522(r3)
/* 80553A54  38 60 00 00 */	li r3, 0
/* 80553A58  48 0D AA 99 */	bl sAdo_TrgSeEcho
/* 80553A5C  38 60 00 00 */	li r3, 0
/* 80553A60  48 0D AA B1 */	bl sAdo_LevSeEcho
/* 80553A64  7F C3 F3 78 */	mr r3, r30
/* 80553A68  7F E4 FB 78 */	mr r4, r31
/* 80553A6C  38 A0 00 04 */	li r5, 4
/* 80553A70  48 00 0E 99 */	bl aNGD_setupAction
lbl_80553A74:
/* 80553A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80553A7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80553A80  7C 08 03 A6 */	mtlr r0
/* 80553A84  38 21 00 10 */	addi r1, r1, 0x10
/* 80553A88  4E 80 00 20 */	blr 
