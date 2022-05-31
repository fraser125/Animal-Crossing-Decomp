lbl_8050934C:
/* 8050934C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80509350  7C 08 02 A6 */	mflr r0
/* 80509354  90 01 00 24 */	stw r0, 0x24(r1)
/* 80509358  39 61 00 20 */	addi r11, r1, 0x20
/* 8050935C  4B B9 1B 75 */	bl func_8009AED0
/* 80509360  7C 7C 1B 78 */	mr r28, r3
/* 80509364  38 60 00 04 */	li r3, 4
/* 80509368  4B FF FA 79 */	bl mRF_GetRandom
/* 8050936C  3C 80 80 6A */	lis r4, l_cliff_start_table@ha /* 0x8069E884@ha */
/* 80509370  54 7E 10 3A */	slwi r30, r3, 2
/* 80509374  3B E4 E8 84 */	addi r31, r4, l_cliff_start_table@l /* 0x8069E884@l */
/* 80509378  3B A3 00 02 */	addi r29, r3, 2
/* 8050937C  7C 7F F0 2E */	lwzx r3, r31, r30
/* 80509380  80 63 00 04 */	lwz r3, 4(r3)
/* 80509384  4B FF FA 5D */	bl mRF_GetRandom
/* 80509388  7C BF F0 2E */	lwzx r5, r31, r30
/* 8050938C  7F A4 EB 78 */	mr r4, r29
/* 80509390  80 A5 00 00 */	lwz r5, 0(r5)
/* 80509394  7F E5 18 AE */	lbzx r31, r5, r3
/* 80509398  38 60 00 01 */	li r3, 1
/* 8050939C  4B FF FA A1 */	bl mRF_D2ToD1
/* 805093A0  7F FC 19 AE */	stbx r31, r28, r3
/* 805093A4  7F A4 EB 78 */	mr r4, r29
/* 805093A8  3B E0 00 3D */	li r31, 0x3d
/* 805093AC  38 60 00 00 */	li r3, 0
/* 805093B0  4B FF FA 8D */	bl mRF_D2ToD1
/* 805093B4  7F FC 19 AE */	stbx r31, r28, r3
/* 805093B8  7F 83 E3 78 */	mr r3, r28
/* 805093BC  7F A5 EB 78 */	mr r5, r29
/* 805093C0  38 80 00 01 */	li r4, 1
/* 805093C4  4B FF FB E1 */	bl mRF_TraceCliffBlock
/* 805093C8  7F 83 E3 78 */	mr r3, r28
/* 805093CC  4B FF FD 8D */	bl mRF_SetEndCliffBlock
/* 805093D0  7F 83 E3 78 */	mr r3, r28
/* 805093D4  7F A5 EB 78 */	mr r5, r29
/* 805093D8  38 80 00 01 */	li r4, 1
/* 805093DC  4B FF FE B1 */	bl mRF_LastCheckCliff
/* 805093E0  30 03 FF FF */	addic r0, r3, -1
/* 805093E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805093E8  7C 60 19 10 */	subfe r3, r0, r3
/* 805093EC  4B B9 1B 31 */	bl func_8009AF1C
/* 805093F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805093F4  7C 08 03 A6 */	mtlr r0
/* 805093F8  38 21 00 20 */	addi r1, r1, 0x20
/* 805093FC  4E 80 00 20 */	blr 
