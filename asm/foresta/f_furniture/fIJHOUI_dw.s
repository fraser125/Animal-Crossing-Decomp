lbl_80630144:
/* 80630144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80630148  7C 08 02 A6 */	mflr r0
/* 8063014C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80630150  39 61 00 20 */	addi r11, r1, 0x20
/* 80630154  4B A6 AD 7D */	bl func_8009AED0
/* 80630158  7C BD 2B 78 */	mr r29, r5
/* 8063015C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80630160  80 A5 00 00 */	lwz r5, 0(r5)
/* 80630164  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80630168  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063016C  7C 7C 1B 78 */	mr r28, r3
/* 80630170  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80630174  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80630178  38 7F 00 08 */	addi r3, r31, 8
/* 8063017C  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80630180  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80630184  90 1F 00 00 */	stw r0, 0(r31)
/* 80630188  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063018C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80630190  7F DC F2 14 */	add r30, r28, r30
/* 80630194  4B DD D2 41 */	bl _Matrix_to_Mtx_new
/* 80630198  3C A0 80 63 */	lis r5, fIJHOUI_DrawBefore@ha /* 0x80630074@ha */
/* 8063019C  3C 80 80 63 */	lis r4, fIJHOUI_DrawAfter@ha /* 0x8063013C@ha */
/* 806301A0  90 7F 00 04 */	stw r3, 4(r31)
/* 806301A4  38 C5 00 74 */	addi r6, r5, fIJHOUI_DrawBefore@l /* 0x80630074@l */
/* 806301A8  38 E4 01 3C */	addi r7, r4, fIJHOUI_DrawAfter@l /* 0x8063013C@l */
/* 806301AC  7F A3 EB 78 */	mr r3, r29
/* 806301B0  7F C5 F3 78 */	mr r5, r30
/* 806301B4  7F 88 E3 78 */	mr r8, r28
/* 806301B8  38 9C 01 34 */	addi r4, r28, 0x134
/* 806301BC  4B D4 15 7D */	bl cKF_Si3_draw_R_SV
/* 806301C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806301C4  4B A6 AD 59 */	bl func_8009AF1C
/* 806301C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806301CC  7C 08 03 A6 */	mtlr r0
/* 806301D0  38 21 00 20 */	addi r1, r1, 0x20
/* 806301D4  4E 80 00 20 */	blr 
