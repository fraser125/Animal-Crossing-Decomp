lbl_8063E198:
/* 8063E198  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063E19C  7C 08 02 A6 */	mflr r0
/* 8063E1A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063E1A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E1A8  4B A5 CD 2D */	bl func_8009AED4
/* 8063E1AC  A8 03 00 02 */	lha r0, 2(r3)
/* 8063E1B0  2C 00 00 01 */	cmpwi r0, 1
/* 8063E1B4  40 82 00 0C */	bne lbl_8063E1C0
/* 8063E1B8  83 A5 20 90 */	lwz r29, 0x2090(r5)
/* 8063E1BC  48 00 00 08 */	b lbl_8063E1C4
lbl_8063E1C0:
/* 8063E1C0  83 A5 00 A0 */	lwz r29, 0xa0(r5)
lbl_8063E1C4:
/* 8063E1C4  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063E1C8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063E1CC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063E1D0  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063E1D4  38 7E 00 08 */	addi r3, r30, 8
/* 8063E1D8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E1DC  90 1E 00 00 */	stw r0, 0(r30)
/* 8063E1E0  80 65 00 00 */	lwz r3, 0(r5)
/* 8063E1E4  4B DC F1 F1 */	bl _Matrix_to_Mtx_new
/* 8063E1E8  57 A6 E8 FE */	srwi r6, r29, 3
/* 8063E1EC  38 A0 00 07 */	li r5, 7
/* 8063E1F0  7C 06 2B 96 */	divwu r0, r6, r5
/* 8063E1F4  90 7E 00 04 */	stw r3, 4(r30)
/* 8063E1F8  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060024@ha */
/* 8063E1FC  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8063E200  3C 80 80 6E */	lis r4, fIMC_palette_table@ha /* 0x806DEC64@ha */
/* 8063E204  3C 60 80 EB */	lis r3, int_iku_mario_coin_model@ha /* 0x80EAA240@ha */
/* 8063E208  7C 00 29 D6 */	mullw r0, r0, r5
/* 8063E20C  38 A8 00 08 */	addi r5, r8, 8
/* 8063E210  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 8063E214  38 E7 00 24 */	addi r7, r7, 0x0024 /* 0xDB060024@l */
/* 8063E218  38 A4 EC 64 */	addi r5, r4, fIMC_palette_table@l /* 0x806DEC64@l */
/* 8063E21C  90 E8 00 00 */	stw r7, 0(r8)
/* 8063E220  7C 00 30 50 */	subf r0, r0, r6
/* 8063E224  3C 80 DE 00 */	lis r4, 0xde00
/* 8063E228  54 06 10 3A */	slwi r6, r0, 2
/* 8063E22C  38 03 A2 40 */	addi r0, r3, int_iku_mario_coin_model@l /* 0x80EAA240@l */
/* 8063E230  7C 65 30 2E */	lwzx r3, r5, r6
/* 8063E234  90 68 00 04 */	stw r3, 4(r8)
/* 8063E238  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063E23C  38 65 00 08 */	addi r3, r5, 8
/* 8063E240  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E244  90 85 00 00 */	stw r4, 0(r5)
/* 8063E248  90 05 00 04 */	stw r0, 4(r5)
/* 8063E24C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E250  4B A5 CC D1 */	bl func_8009AF20
/* 8063E254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063E258  7C 08 03 A6 */	mtlr r0
/* 8063E25C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063E260  4E 80 00 20 */	blr 
