lbl_80634114:
/* 80634114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80634118  7C 08 02 A6 */	mflr r0
/* 8063411C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80634120  39 61 00 20 */	addi r11, r1, 0x20
/* 80634124  4B A6 6D AD */	bl func_8009AED0
/* 80634128  7C BD 2B 78 */	mr r29, r5
/* 8063412C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80634130  80 A5 00 00 */	lwz r5, 0(r5)
/* 80634134  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80634138  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063413C  7C 7C 1B 78 */	mr r28, r3
/* 80634140  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80634144  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80634148  38 7F 00 08 */	addi r3, r31, 8
/* 8063414C  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80634150  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80634154  90 1F 00 00 */	stw r0, 0(r31)
/* 80634158  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063415C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80634160  7F DC F2 14 */	add r30, r28, r30
/* 80634164  4B DD 92 71 */	bl _Matrix_to_Mtx_new
/* 80634168  3C A0 80 63 */	lis r5, aNogPawnB_DwBefore@ha /* 0x806340FC@ha */
/* 8063416C  3C 80 80 63 */	lis r4, aNogPawnB_DwAfter@ha /* 0x80633FB4@ha */
/* 80634170  90 7F 00 04 */	stw r3, 4(r31)
/* 80634174  38 C5 40 FC */	addi r6, r5, aNogPawnB_DwBefore@l /* 0x806340FC@l */
/* 80634178  38 E4 3F B4 */	addi r7, r4, aNogPawnB_DwAfter@l /* 0x80633FB4@l */
/* 8063417C  7F A3 EB 78 */	mr r3, r29
/* 80634180  7F C5 F3 78 */	mr r5, r30
/* 80634184  7F 88 E3 78 */	mr r8, r28
/* 80634188  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063418C  4B D3 D5 AD */	bl cKF_Si3_draw_R_SV
/* 80634190  39 61 00 20 */	addi r11, r1, 0x20
/* 80634194  4B A6 6D 89 */	bl func_8009AF1C
/* 80634198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063419C  7C 08 03 A6 */	mtlr r0
/* 806341A0  38 21 00 20 */	addi r1, r1, 0x20
/* 806341A4  4E 80 00 20 */	blr 
