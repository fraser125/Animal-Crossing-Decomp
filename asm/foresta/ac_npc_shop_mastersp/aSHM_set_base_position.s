lbl_8057C6E0:
/* 8057C6E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8057C6E4  7C 08 02 A6 */	mflr r0
/* 8057C6E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8057C6EC  39 61 00 40 */	addi r11, r1, 0x40
/* 8057C6F0  4B B1 E7 D9 */	bl func_8009AEC8
/* 8057C6F4  7C 7A 1B 78 */	mr r26, r3
/* 8057C6F8  7C 9B 23 78 */	mr r27, r4
/* 8057C6FC  4B E6 D2 69 */	bl mSP_GetShopLevel
/* 8057C700  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057C704  7C 7C 1B 78 */	mr r28, r3
/* 8057C708  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057C70C  7F 63 DB 78 */	mr r3, r27
/* 8057C710  3F 64 00 02 */	addis r27, r4, 2
/* 8057C714  4B E5 CF 2D */	bl get_player_actor_withoutCheck
/* 8057C718  3C 80 80 6C */	lis r4, base_table_x@ha /* 0x806C06C8@ha */
/* 8057C71C  3C 00 43 30 */	lis r0, 0x4330
/* 8057C720  3B C4 06 C8 */	addi r30, r4, base_table_x@l /* 0x806C06C8@l */
/* 8057C724  57 9C 08 3C */	slwi r28, r28, 1
/* 8057C728  7C DE E2 AE */	lhax r6, r30, r28
/* 8057C72C  3C A0 80 6C */	lis r5, base_table_z@ha /* 0x806C06D0@ha */
/* 8057C730  3C 80 80 65 */	lis r4, lit_529@ha /* 0x80649A0C@ha */
/* 8057C734  7C 7D 1B 78 */	mr r29, r3
/* 8057C738  B0 DA 09 C8 */	sth r6, 0x9c8(r26)
/* 8057C73C  3B E5 06 D0 */	addi r31, r5, base_table_z@l /* 0x806C06D0@l */
/* 8057C740  C8 24 9A 0C */	lfd f1, lit_529@l(r4)  /* 0x80649A0C@l */
/* 8057C744  7C 7F E2 AE */	lhax r3, r31, r28
/* 8057C748  90 01 00 08 */	stw r0, 8(r1)
/* 8057C74C  B0 7A 09 CA */	sth r3, 0x9ca(r26)
/* 8057C750  90 01 00 10 */	stw r0, 0x10(r1)
/* 8057C754  A8 1A 09 C8 */	lha r0, 0x9c8(r26)
/* 8057C758  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8057C75C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057C760  C8 01 00 08 */	lfd f0, 8(r1)
/* 8057C764  EC 00 08 28 */	fsubs f0, f0, f1
/* 8057C768  D0 1A 00 28 */	stfs f0, 0x28(r26)
/* 8057C76C  A8 1A 09 CA */	lha r0, 0x9ca(r26)
/* 8057C770  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8057C774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C778  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8057C77C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8057C780  D0 1A 00 30 */	stfs f0, 0x30(r26)
/* 8057C784  7C 1E E2 AE */	lhax r0, r30, r28
/* 8057C788  B0 1A 09 CC */	sth r0, 0x9cc(r26)
/* 8057C78C  7C 7F E2 AE */	lhax r3, r31, r28
/* 8057C790  38 03 FF FE */	addi r0, r3, -2
/* 8057C794  B0 1A 09 CE */	sth r0, 0x9ce(r26)
/* 8057C798  A0 7B 04 5E */	lhz r3, 0x45e(r27)
/* 8057C79C  4B FF FE E1 */	bl func_8057C67C
/* 8057C7A0  A8 1A 09 CC */	lha r0, 0x9cc(r26)
/* 8057C7A4  7C 00 1A 14 */	add r0, r0, r3
/* 8057C7A8  B0 1A 09 CC */	sth r0, 0x9cc(r26)
/* 8057C7AC  A0 7B 04 5E */	lhz r3, 0x45e(r27)
/* 8057C7B0  4B FF FE FD */	bl aSHM_ftr_revise_z
/* 8057C7B4  A8 1A 09 CE */	lha r0, 0x9ce(r26)
/* 8057C7B8  7C 00 1A 14 */	add r0, r0, r3
/* 8057C7BC  B0 1A 09 CE */	sth r0, 0x9ce(r26)
/* 8057C7C0  7C 7E E2 AE */	lhax r3, r30, r28
/* 8057C7C4  38 03 00 50 */	addi r0, r3, 0x50
/* 8057C7C8  B0 1A 09 D0 */	sth r0, 0x9d0(r26)
/* 8057C7CC  7C 7F E2 AE */	lhax r3, r31, r28
/* 8057C7D0  38 03 FF FE */	addi r0, r3, -2
/* 8057C7D4  B0 1A 09 D2 */	sth r0, 0x9d2(r26)
/* 8057C7D8  A0 7B 04 60 */	lhz r3, 0x460(r27)
/* 8057C7DC  4B FF FE A1 */	bl func_8057C67C
/* 8057C7E0  A8 1A 09 D0 */	lha r0, 0x9d0(r26)
/* 8057C7E4  7C 00 1A 14 */	add r0, r0, r3
/* 8057C7E8  B0 1A 09 D0 */	sth r0, 0x9d0(r26)
/* 8057C7EC  A0 7B 04 60 */	lhz r3, 0x460(r27)
/* 8057C7F0  4B FF FE BD */	bl aSHM_ftr_revise_z
/* 8057C7F4  A8 1A 09 D2 */	lha r0, 0x9d2(r26)
/* 8057C7F8  7C 00 1A 14 */	add r0, r0, r3
/* 8057C7FC  B0 1A 09 D2 */	sth r0, 0x9d2(r26)
/* 8057C800  7C 7E E2 AE */	lhax r3, r30, r28
/* 8057C804  38 03 FF B0 */	addi r0, r3, -80
/* 8057C808  B0 1A 09 D4 */	sth r0, 0x9d4(r26)
/* 8057C80C  7C 7F E2 AE */	lhax r3, r31, r28
/* 8057C810  38 03 FF FE */	addi r0, r3, -2
/* 8057C814  B0 1A 09 D6 */	sth r0, 0x9d6(r26)
/* 8057C818  A0 7B 04 62 */	lhz r3, 0x462(r27)
/* 8057C81C  4B FF FE 61 */	bl func_8057C67C
/* 8057C820  A8 1A 09 D4 */	lha r0, 0x9d4(r26)
/* 8057C824  7C 00 1A 14 */	add r0, r0, r3
/* 8057C828  B0 1A 09 D4 */	sth r0, 0x9d4(r26)
/* 8057C82C  A0 7B 04 62 */	lhz r3, 0x462(r27)
/* 8057C830  4B FF FE 7D */	bl aSHM_ftr_revise_z
/* 8057C834  A8 1A 09 D6 */	lha r0, 0x9d6(r26)
/* 8057C838  3C 80 80 65 */	lis r4, data_80649A04@ha /* 0x80649A04@ha */
/* 8057C83C  C0 04 9A 04 */	lfs f0, data_80649A04@l(r4)  /* 0x80649A04@l */
/* 8057C840  39 61 00 40 */	addi r11, r1, 0x40
/* 8057C844  7C 00 1A 14 */	add r0, r0, r3
/* 8057C848  B0 1A 09 D6 */	sth r0, 0x9d6(r26)
/* 8057C84C  A8 7A 09 C8 */	lha r3, 0x9c8(r26)
/* 8057C850  38 03 FF B0 */	addi r0, r3, -80
/* 8057C854  B0 1A 09 D8 */	sth r0, 0x9d8(r26)
/* 8057C858  A8 1A 09 CA */	lha r0, 0x9ca(r26)
/* 8057C85C  B0 1A 09 DA */	sth r0, 0x9da(r26)
/* 8057C860  A8 1A 09 D8 */	lha r0, 0x9d8(r26)
/* 8057C864  B0 1A 09 DC */	sth r0, 0x9dc(r26)
/* 8057C868  A8 7A 09 DA */	lha r3, 0x9da(r26)
/* 8057C86C  38 03 00 50 */	addi r0, r3, 0x50
/* 8057C870  B0 1A 09 DE */	sth r0, 0x9de(r26)
/* 8057C874  A8 7A 09 DC */	lha r3, 0x9dc(r26)
/* 8057C878  38 03 00 28 */	addi r0, r3, 0x28
/* 8057C87C  B0 1A 09 E0 */	sth r0, 0x9e0(r26)
/* 8057C880  A8 1A 09 DE */	lha r0, 0x9de(r26)
/* 8057C884  B0 1A 09 E2 */	sth r0, 0x9e2(r26)
/* 8057C888  A8 7A 09 C8 */	lha r3, 0x9c8(r26)
/* 8057C88C  38 03 00 50 */	addi r0, r3, 0x50
/* 8057C890  B0 1A 09 E4 */	sth r0, 0x9e4(r26)
/* 8057C894  A8 1A 09 CA */	lha r0, 0x9ca(r26)
/* 8057C898  B0 1A 09 E6 */	sth r0, 0x9e6(r26)
/* 8057C89C  A8 1A 09 E4 */	lha r0, 0x9e4(r26)
/* 8057C8A0  B0 1A 09 E8 */	sth r0, 0x9e8(r26)
/* 8057C8A4  A8 7A 09 E6 */	lha r3, 0x9e6(r26)
/* 8057C8A8  38 03 00 50 */	addi r0, r3, 0x50
/* 8057C8AC  B0 1A 09 EA */	sth r0, 0x9ea(r26)
/* 8057C8B0  A8 7A 09 E8 */	lha r3, 0x9e8(r26)
/* 8057C8B4  38 03 FF D8 */	addi r0, r3, -40
/* 8057C8B8  B0 1A 09 EC */	sth r0, 0x9ec(r26)
/* 8057C8BC  A8 1A 09 EA */	lha r0, 0x9ea(r26)
/* 8057C8C0  B0 1A 09 EE */	sth r0, 0x9ee(r26)
/* 8057C8C4  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8057C8C8  FC 20 08 1E */	fctiwz f1, f1
/* 8057C8CC  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8057C8D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8057C8D4  B0 1A 09 F0 */	sth r0, 0x9f0(r26)
/* 8057C8D8  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 8057C8DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8057C8E0  FC 00 00 1E */	fctiwz f0, f0
/* 8057C8E4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8057C8E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057C8EC  B0 1A 09 F2 */	sth r0, 0x9f2(r26)
/* 8057C8F0  4B B1 E6 25 */	bl func_8009AF14
/* 8057C8F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8057C8F8  7C 08 03 A6 */	mtlr r0
/* 8057C8FC  38 21 00 40 */	addi r1, r1, 0x40
/* 8057C900  4E 80 00 20 */	blr 
