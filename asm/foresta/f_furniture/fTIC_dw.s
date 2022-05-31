lbl_8063C77C:
/* 8063C77C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063C780  7C 08 02 A6 */	mflr r0
/* 8063C784  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063C788  39 61 00 20 */	addi r11, r1, 0x20
/* 8063C78C  4B A5 E7 45 */	bl func_8009AED0
/* 8063C790  7C BD 2B 78 */	mr r29, r5
/* 8063C794  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063C798  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063C79C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063C7A0  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063C7A4  7C 7C 1B 78 */	mr r28, r3
/* 8063C7A8  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063C7AC  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063C7B0  38 7F 00 08 */	addi r3, r31, 8
/* 8063C7B4  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063C7B8  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063C7BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8063C7C0  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063C7C4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063C7C8  7F DC F2 14 */	add r30, r28, r30
/* 8063C7CC  4B DD 0C 09 */	bl _Matrix_to_Mtx_new
/* 8063C7D0  3C A0 80 64 */	lis r5, fTIC_DrawBefore@ha /* 0x8063C588@ha */
/* 8063C7D4  3C 80 80 64 */	lis r4, fTIC_DrawAfter@ha /* 0x8063C5FC@ha */
/* 8063C7D8  90 7F 00 04 */	stw r3, 4(r31)
/* 8063C7DC  38 C5 C5 88 */	addi r6, r5, fTIC_DrawBefore@l /* 0x8063C588@l */
/* 8063C7E0  38 E4 C5 FC */	addi r7, r4, fTIC_DrawAfter@l /* 0x8063C5FC@l */
/* 8063C7E4  7F A3 EB 78 */	mr r3, r29
/* 8063C7E8  7F C5 F3 78 */	mr r5, r30
/* 8063C7EC  7F 88 E3 78 */	mr r8, r28
/* 8063C7F0  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063C7F4  4B D3 4F 45 */	bl cKF_Si3_draw_R_SV
/* 8063C7F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063C7FC  4B A5 E7 21 */	bl func_8009AF1C
/* 8063C800  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063C804  7C 08 03 A6 */	mtlr r0
/* 8063C808  38 21 00 20 */	addi r1, r1, 0x20
/* 8063C80C  4E 80 00 20 */	blr 
