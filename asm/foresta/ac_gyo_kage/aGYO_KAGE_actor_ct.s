lbl_80425764:
/* 80425764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80425768  7C 08 02 A6 */	mflr r0
/* 8042576C  3C A0 80 68 */	lis r5, aGYO_KAGE_shadow_scale@ha /* 0x80682BC8@ha */
/* 80425770  39 20 00 01 */	li r9, 1
/* 80425774  90 01 00 34 */	stw r0, 0x34(r1)
/* 80425778  38 C5 2B C8 */	addi r6, r5, aGYO_KAGE_shadow_scale@l /* 0x80682BC8@l */
/* 8042577C  39 00 00 00 */	li r8, 0
/* 80425780  38 00 FF FF */	li r0, -1
/* 80425784  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80425788  7C 9F 23 78 */	mr r31, r4
/* 8042578C  38 A0 00 64 */	li r5, 0x64
/* 80425790  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80425794  7C 7E 1B 78 */	mr r30, r3
/* 80425798  99 23 00 B5 */	stb r9, 0xb5(r3)
/* 8042579C  3C 60 80 64 */	lis r3, data_80643F1C@ha /* 0x80643F1C@ha */
/* 804257A0  38 E3 3F 1C */	addi r7, r3, data_80643F1C@l /* 0x80643F1C@l */
/* 804257A4  99 1E 01 08 */	stb r8, 0x108(r30)
/* 804257A8  3C 60 80 64 */	lis r3, lit_477@ha /* 0x80643F20@ha */
/* 804257AC  C0 03 3F 20 */	lfs f0, lit_477@l(r3)  /* 0x80643F20@l */
/* 804257B0  38 61 00 14 */	addi r3, r1, 0x14
/* 804257B4  90 1E 01 A8 */	stw r0, 0x1a8(r30)
/* 804257B8  38 00 00 26 */	li r0, 0x26
/* 804257BC  C0 47 00 00 */	lfs f2, 0(r7)
/* 804257C0  91 1E 01 74 */	stw r8, 0x174(r30)
/* 804257C4  A8 FE 00 24 */	lha r7, 0x24(r30)
/* 804257C8  54 E4 10 3A */	slwi r4, r7, 2
/* 804257CC  7C 26 24 2E */	lfsx f1, r6, r4
/* 804257D0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804257D4  D0 3E 00 5C */	stfs f1, 0x5c(r30)
/* 804257D8  D0 3E 00 60 */	stfs f1, 0x60(r30)
/* 804257DC  D0 3E 00 64 */	stfs f1, 0x64(r30)
/* 804257E0  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 804257E4  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 804257E8  B0 9E 00 DE */	sth r4, 0xde(r30)
/* 804257EC  90 BE 01 9C */	stw r5, 0x19c(r30)
/* 804257F0  B0 1E 01 A0 */	sth r0, 0x1a0(r30)
/* 804257F4  99 3E 01 A2 */	stb r9, 0x1a2(r30)
/* 804257F8  99 1E 01 A3 */	stb r8, 0x1a3(r30)
/* 804257FC  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80425800  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80425804  90 81 00 14 */	stw r4, 0x14(r1)
/* 80425808  90 01 00 18 */	stw r0, 0x18(r1)
/* 8042580C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80425810  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80425814  4B F6 AA 31 */	bl mCoBG_Wpos2BgAttribute_Original
/* 80425818  4B F6 EA B5 */	bl mCoBG_CheckWaterAttribute
/* 8042581C  2C 03 00 00 */	cmpwi r3, 0
/* 80425820  41 82 00 40 */	beq lbl_80425860
/* 80425824  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 80425828  3C 60 80 68 */	lis r3, lit_444@ha /* 0x80682BE8@ha */
/* 8042582C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80425830  38 83 2B E8 */	addi r4, r3, lit_444@l /* 0x80682BE8@l */
/* 80425834  38 61 00 08 */	addi r3, r1, 8
/* 80425838  90 A1 00 08 */	stw r5, 8(r1)
/* 8042583C  38 A0 00 F4 */	li r5, 0xf4
/* 80425840  90 01 00 0C */	stw r0, 0xc(r1)
/* 80425844  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80425848  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042584C  4B F6 E7 6D */	bl mCoBG_GetWaterHeight_File
/* 80425850  3C 60 80 64 */	lis r3, lit_478@ha /* 0x80643F24@ha */
/* 80425854  C0 03 3F 24 */	lfs f0, lit_478@l(r3)  /* 0x80643F24@l */
/* 80425858  EC 01 00 28 */	fsubs f0, f1, f0
/* 8042585C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
lbl_80425860:
/* 80425860  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 80425864  38 80 00 6B */	li r4, 0x6b
/* 80425868  38 A0 00 07 */	li r5, 7
/* 8042586C  4B F5 04 75 */	bl Actor_info_name_search
/* 80425870  90 7E 01 74 */	stw r3, 0x174(r30)
/* 80425874  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80425878  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8042587C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80425880  7C 08 03 A6 */	mtlr r0
/* 80425884  38 21 00 30 */	addi r1, r1, 0x30
/* 80425888  4E 80 00 20 */	blr 