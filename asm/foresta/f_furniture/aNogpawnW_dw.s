lbl_806343BC:
/* 806343BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806343C0  7C 08 02 A6 */	mflr r0
/* 806343C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806343C8  39 61 00 20 */	addi r11, r1, 0x20
/* 806343CC  4B A6 6B 05 */	bl func_8009AED0
/* 806343D0  7C BD 2B 78 */	mr r29, r5
/* 806343D4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 806343D8  80 A5 00 00 */	lwz r5, 0(r5)
/* 806343DC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 806343E0  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 806343E4  7C 7C 1B 78 */	mr r28, r3
/* 806343E8  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 806343EC  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 806343F0  38 7F 00 08 */	addi r3, r31, 8
/* 806343F4  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 806343F8  1C 64 03 00 */	mulli r3, r4, 0x300
/* 806343FC  90 1F 00 00 */	stw r0, 0(r31)
/* 80634400  3B C3 02 10 */	addi r30, r3, 0x210
/* 80634404  80 7D 00 00 */	lwz r3, 0(r29)
/* 80634408  7F DC F2 14 */	add r30, r28, r30
/* 8063440C  4B DD 8F C9 */	bl _Matrix_to_Mtx_new
/* 80634410  3C A0 80 63 */	lis r5, aNogpawnW_DwBefore@ha /* 0x806343A4@ha */
/* 80634414  3C 80 80 63 */	lis r4, aNogpawnW_DwAfter@ha /* 0x8063425C@ha */
/* 80634418  90 7F 00 04 */	stw r3, 4(r31)
/* 8063441C  38 C5 43 A4 */	addi r6, r5, aNogpawnW_DwBefore@l /* 0x806343A4@l */
/* 80634420  38 E4 42 5C */	addi r7, r4, aNogpawnW_DwAfter@l /* 0x8063425C@l */
/* 80634424  7F A3 EB 78 */	mr r3, r29
/* 80634428  7F C5 F3 78 */	mr r5, r30
/* 8063442C  7F 88 E3 78 */	mr r8, r28
/* 80634430  38 9C 01 34 */	addi r4, r28, 0x134
/* 80634434  4B D3 D3 05 */	bl cKF_Si3_draw_R_SV
/* 80634438  39 61 00 20 */	addi r11, r1, 0x20
/* 8063443C  4B A6 6A E1 */	bl func_8009AF1C
/* 80634440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80634444  7C 08 03 A6 */	mtlr r0
/* 80634448  38 21 00 20 */	addi r1, r1, 0x20
/* 8063444C  4E 80 00 20 */	blr 
